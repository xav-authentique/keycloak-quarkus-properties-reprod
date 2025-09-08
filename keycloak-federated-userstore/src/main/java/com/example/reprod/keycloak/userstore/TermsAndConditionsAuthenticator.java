package com.example.reprod.keycloak.userstore;

import org.keycloak.authentication.AuthenticationFlowContext;
import org.keycloak.authentication.authenticators.resetcred.AbstractSetRequiredActionAuthenticator;
import org.keycloak.models.UserModel;

import java.util.List;

public class TermsAndConditionsAuthenticator extends AbstractSetRequiredActionAuthenticator {

	public static final String PROVIDER_ID = "terms-and-conditions";

	@Override
	public void authenticate(AuthenticationFlowContext context) {
		if (context.getExecution().isRequired()) {
			List<String> attributes = context.getUser().getAttributes().get("terms_and_conditions");
			if (attributes == null || attributes.isEmpty()) {
				context.getAuthenticationSession().addRequiredAction(UserModel.RequiredAction.TERMS_AND_CONDITIONS);
			}
		}
		context.success();
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
}
