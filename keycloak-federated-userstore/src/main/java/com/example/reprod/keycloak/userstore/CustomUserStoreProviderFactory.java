package com.example.reprod.keycloak.userstore;

import org.jboss.logging.Logger;
import org.keycloak.component.ComponentModel;
import org.keycloak.connections.jpa.JpaConnectionProvider;
import org.keycloak.models.KeycloakSession;
import org.keycloak.policy.PasswordPolicyManagerProvider;
import org.keycloak.storage.UserStorageProviderFactory;

public class CustomUserStoreProviderFactory implements UserStorageProviderFactory<CustomUserStoreProvider> {

	public static final String PROVIDER_ID = "custom-userstore";

	private static final Logger logger = Logger.getLogger(CustomUserStoreProviderFactory.class);

	@Override
	public void close() {
		logger.info("<<<<<< Closing factory");
	}

	@Override
	public CustomUserStoreProvider create(KeycloakSession session, ComponentModel model) {
		logger.infov(">>>>>> Creating provider with name: {0} and id:{1}", model.getName(), model.getId());
		return new CustomUserStoreProvider(
				session,
				model,
				session.getProvider(JpaConnectionProvider.class, "userstore").getEntityManager(),
				session.getProvider(PasswordPolicyManagerProvider.class));
	}

	@Override
	public String getHelpText() {
		return "Custom User Storage Provider";
	}

	@Override
	public String getId() {
		return PROVIDER_ID;
	}
}
