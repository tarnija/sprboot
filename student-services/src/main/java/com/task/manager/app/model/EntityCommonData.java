package com.task.manager.app.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EntityCommonData {

	@Column(name = "CREATED_ON", nullable = false)
	private Date createdOn = new Date();

	@Column(name = "MODIFIED_ON", nullable = false)
	private Date modifiedOn = new Date();
	
	@Column(name = "CREATED_BY")
	private Long createdBy;

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public Date getModifiedOn() {
		return modifiedOn;
	}

	public void setModifiedOn(Date modifiedOn) {
		this.modifiedOn = modifiedOn;
	}

	public Long getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Long createdBy) {
		this.createdBy = createdBy;
	}
}
