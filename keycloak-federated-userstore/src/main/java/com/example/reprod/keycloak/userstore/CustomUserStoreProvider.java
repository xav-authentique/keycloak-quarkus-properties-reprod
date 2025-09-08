package com.example.reprod.keycloak.userstore;

import org.jboss.logging.Logger;
import org.keycloak.component.ComponentModel;
import org.keycloak.credential.CredentialInput;
import org.keycloak.credential.CredentialInputUpdater;
import org.keycloak.credential.CredentialInputValidator;
import org.keycloak.models.GroupModel;
import org.keycloak.models.KeycloakSession;
import org.keycloak.models.RealmModel;
import org.keycloak.models.UserCredentialModel;
import org.keycloak.models.UserModel;
import org.keycloak.models.cache.CachedUserModel;
import org.keycloak.models.credential.PasswordCredentialModel;
import org.keycloak.policy.PasswordPolicyManagerProvider;
import org.keycloak.policy.PolicyError;
import org.keycloak.storage.StorageId;
import org.keycloak.storage.UserStorageProvider;
import org.keycloak.storage.user.UserLookupProvider;
import org.keycloak.storage.user.UserQueryMethodsProvider;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Stream;

public class CustomUserStoreProvider implements UserStorageProvider,
		UserLookupProvider,
		CredentialInputUpdater,
		CredentialInputValidator,
		UserQueryMethodsProvider {

	private static final Logger logger = Logger.getLogger(CustomUserStoreProvider.class);

	private final EntityManager em;

	private final ComponentModel model;

	private final PasswordPolicyManagerProvider passwordPolicyManager;

	private final KeycloakSession session;

	CustomUserStoreProvider(KeycloakSession session, ComponentModel model, EntityManager em, PasswordPolicyManagerProvider passwordPolicyManager) {
		this.em = em;
		this.passwordPolicyManager = passwordPolicyManager;
		this.session = session;
		this.model = model;
	}

	@Override
	public void close() {
		logger.info("<<<<<< Closing provider");
		// nothing to close
	}

	@Override
	public void disableCredentialType(RealmModel realm, UserModel user, String credentialType) {
		if (!supportsCredentialType(credentialType)) return;

		getUserAdapter(user).setPassword(null);
	}

	@Override
	public Stream<String> getDisableableCredentialTypesStream(RealmModel realm, UserModel user) {
		if (getUserAdapter(user).getPassword() != null) {
			Set<String> set = new HashSet<>();
			set.add(PasswordCredentialModel.TYPE);
			return set.stream();
		} else {
			return Stream.empty();
		}
	}

	public String getPassword(UserModel user) {
		return getUserAdapter(user).getPassword();
	}

	public UserAdapter getUserAdapter(UserModel user) {
		if (user instanceof CachedUserModel) {
			// Forces cache entry to be evicted
			return (UserAdapter) ((CachedUserModel) user).getDelegateForUpdate();
		} else {
			return (UserAdapter) user;
		}
	}

	@Override
	public UserModel getUserByEmail(RealmModel realm, String email) {
		logger.infov("getUserByEmail: {0}", email);
		TypedQuery<User> query = em.createNamedQuery("getUserByEmail", User.class);
		query.setParameter("email", email);
		List<User> result = query.getResultList();
		if (result.isEmpty()) return null;
		return new UserAdapter(session, realm, model, result.get(0));
	}

	@Override
	public UserModel getUserById(RealmModel realm, String id) {
		logger.debugv("getUserById: {0}", id);
		String persistenceId = StorageId.externalId(id);
		User entity = em.find(User.class, UUID.fromString(persistenceId));
		if (entity == null) {
			logger.infov("could not find user by id: {0}", id);
			return null;
		}
		return new UserAdapter(session, realm, model, entity);
	}

	@Override
	public UserModel getUserByUsername(RealmModel realm, String username) {
		logger.infov("getUserByUsername: {0}", username);
		User result = getUserByUsername(username);
		if (result == null) {
			return null;
		}

		return new UserAdapter(session, realm, model, result);
	}

	private User getUserByUsername(String username) {
		TypedQuery<User> query = em.createNamedQuery("getUserByUsername", User.class);
		query.setParameter("username", username);
		User result;
		try {
			result = query.getSingleResult();
			logger.infov("found username: {0} with id: {1}", username, result.getId());
		} catch (Exception e) {
			logger.infov("could not find username: {0}, reason {1}", username, e.getMessage());
			return null;
		}
		return result;
	}

	@Override
	public boolean isConfiguredFor(RealmModel realm, UserModel user, String credentialType) {
		return supportsCredentialType(credentialType) && getPassword(user) != null;
	}

	@Override
	public boolean isValid(RealmModel realm, UserModel user, CredentialInput input) {
		if (!supportsCredentialType(input.getType()) || !(input instanceof UserCredentialModel)) {
			return false;
		}
		UserCredentialModel cred = (UserCredentialModel) input;
		String encryptedPassword = getPassword(user);
		return PasswordEncoder.matches(cred.getValue(), encryptedPassword);
	}

	@Override
	public Stream<UserModel> searchForUserStream(RealmModel realm, Map<String, String> params, Integer firstResult,
												 Integer maxResults) {
		logger.infov("searchForUserStream(params: {0})", params);

		if (params.containsKey("keycloak.session.realm.users.query.exact") && params.get("keycloak.session.realm.users.query.exact").equals("true")) {
			String username = params.get("username");
			User user = getUserByUsername(username);
			if (user != null) {
				return Stream.of(new UserAdapter(session, realm, model, user));
			}
		}

		return Stream.empty();
	}

	@Override
	public Stream<UserModel> getGroupMembersStream(RealmModel realm, GroupModel group, Integer firstResult,
												   Integer maxResults) {
		logger.warn("getGroupMembersStream() is not supported by this provider");
		return Stream.empty();
	}

	@Override
	public Stream<UserModel> searchForUserByUserAttributeStream(RealmModel realm, String attrName, String attrValue) {
		logger.warnv("searchForUserByUserAttributeStream(attrName: {0}, attrValue: {1}) is not supported by this provider!",attrName,attrValue);
		return Stream.empty();
	}

	@Override
	public boolean supportsCredentialType(String credentialType) {
		return PasswordCredentialModel.TYPE.equals(credentialType);
	}

	@Override
	public boolean updateCredential(RealmModel realm, UserModel user, CredentialInput input) {
		if (!supportsCredentialType(input.getType()) || !(input instanceof UserCredentialModel)) {
			return false;
		}

		UserCredentialModel cred = (UserCredentialModel) input;
		UserAdapter adapter = getUserAdapter(user);

		if (isNotValidAccordingToPasswordPolicy(user, cred)) {
			return false;
		}

		adapter.setPassword(cred.getValue());

		return true;
	}

	private boolean isNotValidAccordingToPasswordPolicy(UserModel user, UserCredentialModel cred) {
		PolicyError err = passwordPolicyManager.validate(user.getUsername(), cred.getValue());
		return err != null;
	}

}
