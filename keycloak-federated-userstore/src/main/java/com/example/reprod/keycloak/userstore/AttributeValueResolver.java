package com.example.reprod.keycloak.userstore;

import org.keycloak.models.UserModel;

import java.util.function.Supplier;

public class AttributeValueResolver {

	private final Supplier<String> fallbackAttributeResolver;

	private final User user;

	AttributeValueResolver(User user, Supplier<String> fallbackResolver) {
		this.user = user;
		this.fallbackAttributeResolver = fallbackResolver;
	}

	public String getAttributeValue(String name) {
		String attributeValue;
		switch (name) {
			case UserModel.FIRST_NAME -> attributeValue = user.getFirstName();
			case UserModel.LAST_NAME -> attributeValue = user.getFullLastName();
			case UserModel.EMAIL -> attributeValue = user.getEmail();
			case UserModel.ENABLED -> attributeValue = String.valueOf(user.isEnabled());
			case UserModel.EMAIL_VERIFIED -> attributeValue = String.valueOf(user.isEmailVerified());
			case UserModel.USERNAME -> attributeValue = user.getUsername();
			default -> attributeValue = fallbackAttributeResolver.get();
		}
		return attributeValue;
	}

}
