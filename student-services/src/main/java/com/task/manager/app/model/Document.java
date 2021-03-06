package com.task.manager.app.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "DOCUMENTS")
public class Document extends BaseEntity {
	private String fileName;
	private long fileSize;
	private String type;

	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public Document(String fileName, long fileSize, String type, Long userId) {
		this.fileName = fileName;
		this.fileSize = fileSize;
		this.type = type;
		//this.commonData.setCreatedBy(userId);
	}
	
	public Document() {
		
	}
}
