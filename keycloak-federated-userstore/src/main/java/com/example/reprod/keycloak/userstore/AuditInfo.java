package com.example.reprod.keycloak.userstore;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * Value object for storing auditing info for the entity that embeds this.
 */
@Embeddable
public class AuditInfo implements Serializable {

	@Column(nullable = false)
	private LocalDateTime created;

	@Column(name = "created_by", nullable = false)
	private String createdBy;

	@Column(nullable = false)
	private LocalDateTime modified;

	@Column(name = "modified_by", nullable = false)
	private String modifiedBy;

	public LocalDateTime getCreated() {
		return created;
	}

	public void setCreated(LocalDateTime created) {
		this.created = created;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public LocalDateTime getModified() {
		return modified;
	}

	public void setModified(LocalDateTime modified) {
		this.modified = modified;
	}

	public String getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

}
