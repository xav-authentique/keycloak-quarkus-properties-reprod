package com.example.reprod.keycloak.userstore;

public final class PasswordEncoder {

	PasswordEncoder() {
		throw new IllegalStateException("Do not construct this utility class");
	}

	public static String encode(String password) {
		return "encoded-password";
	}

	public static boolean matches(String rawPassword, String encodedPassword) {
		return true;
	}
}
