package com.task.manager.app.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Embeddable
public class EntityCommonData {

	@Column(name = "CREATED_ON")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createdOn;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "MODIFIED_ON")
	private Date modifiedOn;
	
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
