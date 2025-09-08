package com.example.reprod.keycloak.userstore;

import org.apache.commons.lang3.StringUtils;

import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import java.util.UUID;


@NamedQuery(name = "getUserByUsername", query = "select u from User u where u.username = :username")
@NamedQuery(name = "getUserByEmail", query = "select u from User u where u.email = :email")
@Entity
@Table(name = "usr_users")
public class User {

	@Embedded
	private final AuditInfo auditInfo = new AuditInfo();

	private String email;

	@Column(name = "email_verified")
	private boolean emailVerified;

	private boolean enabled;

	@Column(name = "encrypted_password")
	private String encryptedPassword;

	@Column(name = "first_name")
	private String firstName;

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private UUID id;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "middle_name")
	private String middleName;

	@Column(name = "terms_and_conditions_accepted_timestamp")
	private String termsAndConditionsAcceptedTimestamp;

	private String username;

	public AuditInfo getAuditInfo() {
		return auditInfo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEncryptedPassword() {
		return encryptedPassword;
	}

	public void setEncryptedPassword(String password) {
		this.encryptedPassword = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * Returns the full last name of the user as workaround for Keycloak not supporting middle name.
	 * If the middle name is not set, the middle name is not included in the full last name.
	 * @return the full last name of the user
	 */
	public String getFullLastName() {
		if (StringUtils.isBlank(getMiddleName())) {
			return getLastName();
		}

		return getMiddleName() + " " + getLastName();
	}

	public UUID getId() {
		return id;
	}

	public void setId(UUID id) {
		this.id = id;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getTermsAndConditionsAcceptedTimestamp() {
		return termsAndConditionsAcceptedTimestamp;
	}

	public void setTermsAndConditionsAcceptedTimestamp(String termsAndConditionsAcceptedTimestamp) {
		this.termsAndConditionsAcceptedTimestamp = termsAndConditionsAcceptedTimestamp;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public boolean isEmailVerified() {
		return emailVerified;
	}

	public void setEmailVerified(boolean emailVerified) {
		this.emailVerified = emailVerified;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

}
