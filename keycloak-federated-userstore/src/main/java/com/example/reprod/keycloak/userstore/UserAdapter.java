package com.example.reprod.keycloak.userstore;

import org.jboss.logging.Logger;
import org.keycloak.common.util.MultivaluedHashMap;
import org.keycloak.component.ComponentModel;
import org.keycloak.models.KeycloakSession;
import org.keycloak.models.RealmModel;
import org.keycloak.models.UserModel;
import org.keycloak.storage.StorageId;
import org.keycloak.storage.adapter.AbstractUserAdapterFederatedStorage;

import java.time.ZoneOffset;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

public class UserAdapter extends AbstractUserAdapterFederatedStorage {

	private static final Logger logger = Logger.getLogger(UserAdapter.class);

	protected User entity;

	protected String keycloakId;

	public UserAdapter(KeycloakSession session, RealmModel realm, ComponentModel model, User entity) {
		super(session, realm, model);
		this.entity = entity;
		keycloakId = StorageId.keycloakId(model, entity.getId().toString());
	}

	@Override
	public boolean equals(Object other) {
		return super.equals(other);
	}

	@Override
	public Stream<String> getAttributeStream(String name) {
		logger.info("getAttributeStream(name) <- " + name);

		return Stream.of(new AttributeValueResolver(entity, () -> super.getFirstAttribute(name)).getAttributeValue(name));
	}

	@Override
	public Map<String, List<String>> getAttributes() {
		Map<String, List<String>> defaultAttributes = super.getAttributes();
		MultivaluedHashMap<String, String> attributes = new MultivaluedHashMap<>();
		attributes.putAll(defaultAttributes);
		attributes.replace(UserModel.FIRST_NAME, List.of(entity.getFirstName()));
		attributes.replace(UserModel.LAST_NAME, List.of(entity.getFullLastName()));
		attributes.replace(UserModel.EMAIL, List.of(entity.getEmail()));
		attributes.replace(UserModel.USERNAME, List.of(entity.getUsername()));
		if (entity.getTermsAndConditionsAcceptedTimestamp() != null) {
			attributes.put("terms_and_conditions", List.of(entity.getTermsAndConditionsAcceptedTimestamp()));
		}

		logger.info("getAttributes() -> " + attributes);
		return attributes;
	}

	@Override
	public Long getCreatedTimestamp() {
		return entity.getAuditInfo().getCreated().toEpochSecond(ZoneOffset.UTC);
	}

	@Override
	public String getEmail() {
		return entity.getEmail();
	}

	@Override
	public void setEmail(String email) {
		entity.setEmail(email);
	}

	@Override
	public String getFirstAttribute(String name) {
		String firstAttribute = new AttributeValueResolver(entity, () -> super.getFirstAttribute(name)).getAttributeValue(name);
		logger.infov("getFirstAttribute({0}) -> {1}", name, firstAttribute);
		return firstAttribute;
	}

	@Override
	public String getId() {
		return keycloakId;
	}

	@Override
	public String getLastName() {
		return entity.getFullLastName();
	}

	public String getPassword() {
		return entity.getEncryptedPassword();
	}

	public void setPassword(String password) {
		entity.setEncryptedPassword(PasswordEncoder.encode(password));
	}

	@Override
	public String getUsername() {
		return entity.getUsername();
	}

	@Override
	public void setUsername(String username) {
		throw new ReadonlyAttributeException("username");
	}

	@Override
	public int hashCode() {
		return super.hashCode();
	}

	@Override
	public boolean isEmailVerified() {
		return entity.isEmailVerified();
	}

	@Override
	public void setEmailVerified(boolean verified) {
		entity.setEmailVerified(verified);
	}

	@Override
	public boolean isEnabled() {
		return entity.isEnabled();
	}

	@Override
	public void setEnabled(boolean enabled) {
		entity.setEnabled(enabled);
	}

	@Override
	public void removeAttribute(String name) {
		throw new ReadonlyAttributeException(name);
	}

	@Override
	public void setAttribute(String name, List<String> values) {
		logger.infov("setAttribute({0}, {1})", name, values);
		if (name.equals("terms_and_conditions")) {
			entity.setTermsAndConditionsAcceptedTimestamp(values.get(0));
		} else if (name.equals("email")) {
			entity.setEmail(values.get(0));
		} else if (name.equals("username")) {
			entity.setUsername(values.get(0));
		} else {
			throw new ReadonlyAttributeException(name);
		}
	}

	@Override
	public void setSingleAttribute(String name, String value) {
		logger.infov("setSingleAttribute({0}, {1})", name, value);
		throw new ReadonlyAttributeException(name);
	}

	public static class ReadonlyAttributeException extends UnsupportedOperationException {

		public ReadonlyAttributeException(String field) {
			super(String.format("User-attribute: %s is readonly!", field));
		}

	}
}
