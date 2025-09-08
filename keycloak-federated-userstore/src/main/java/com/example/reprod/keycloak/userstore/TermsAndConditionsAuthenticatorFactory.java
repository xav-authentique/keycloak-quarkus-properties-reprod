package com.example.reprod.keycloak.userstore;

import org.keycloak.Config;
import org.keycloak.authentication.Authenticator;
import org.keycloak.authentication.AuthenticatorFactory;
import org.keycloak.authentication.ConfigurableAuthenticatorFactory;
import org.keycloak.models.AuthenticationExecutionModel;
import org.keycloak.models.KeycloakSession;
import org.keycloak.models.KeycloakSessionFactory;
import org.keycloak.provider.ProviderConfigProperty;

import java.util.List;

public class TermsAndConditionsAuthenticatorFactory implements AuthenticatorFactory, ConfigurableAuthenticatorFactory {

	public static final String PROVIDER_ID = "terms-and-conditions-authenticator";

	private static final AuthenticationExecutionModel.Requirement[] REQUIREMENT_CHOICES = {
			AuthenticationExecutionModel.Requirement.REQUIRED,
			AuthenticationExecutionModel.Requirement.ALTERNATIVE,
			AuthenticationExecutionModel.Requirement.DISABLED
	};

	private static final TermsAndConditionsAuthenticator SINGLETON = new TermsAndConditionsAuthenticator();

	@Override
	public void close() {
		// Nothing to clean up
	}

	@Override
	public Authenticator create(KeycloakSession keycloakSession) {
		return SINGLETON;
	}

	@Override
	public List<ProviderConfigProperty> getConfigProperties() {
		return List.of();
	}

	@Override
	public String getDisplayType() {
		return "Sets the Terms and Conditions required action";
	}

	@Override
	public String getHelpText() {
		return "Sets the Terms and Conditions required action if execution is REQUIRED.";
	}

	@Override
	public String getId() {
		return PROVIDER_ID;
	}

	@Override
	public String getReferenceCategory() {
		return null;
	}

	@Override
	public AuthenticationExecutionModel.Requirement[] getRequirementChoices() {
		return REQUIREMENT_CHOICES;
	}

	@Override
	public void init(Config.Scope scope) {
		// Nothing to do
	}

	@Override
	public boolean isConfigurable() {
		return false;
	}

	@Override
	public boolean isUserSetupAllowed() {
		return true;
	}

	@Override
	public void postInit(KeycloakSessionFactory keycloakSessionFactory) {
		// Nothing to do
	}
}
