package com.springbootweb.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "NOTES")
public class Note {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private String title;
	
	@Lob
	private String content;
	
	@Convert(converter = TagConvertor.class)
	private Set<String> tags;

	@Column(name = "CREATED_ON")
	private Date createdOn;
	
	@Column(name = "MODIFIED_ON")
	private Date modifiedOn;
	
	@Column(name = "CREATED_BY")
	private Long createdBy;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Set<String> getTags() {
		return tags;
	}

	public void setTags(Set<String> tags) {
		this.tags = tags;
	}

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

	public Note(String title, String content, Set<String> tags, Date createdOn, Date modifiedOn, Long createdBy) {
		this.title = title;
		this.content = content;
		this.tags = tags;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
		this.createdBy = createdBy;
	}
	
	public Note(String title, String content, Set<String> tags) {
		this.title = title;
		this.content = content;
		this.tags = tags;
	}
	
	public Note() {
		//
	}
}
