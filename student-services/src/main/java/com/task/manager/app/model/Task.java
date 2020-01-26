package com.task.manager.app.model;


import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "task")
public class Task extends BaseEntity { 
	
	private Long userId;
    private String description;
    private String assignee;
    
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date startOn;

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date doneBy;
    private String taskTitle;
    private String userName;
    private String status;

    public Long getUserid() {
		return userId;
	}
	
    public void setUserid(Long userId) {
		this.userId = userId;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getAssignee() {
		return assignee;
	}
	
	public void setAssignee(String assignee) {
		this.assignee = assignee;
	}
	
	public Date getStartOn() {
		return startOn;
	}
	
	public void setStartOn(Date startOn) {
		this.startOn = startOn;
	}
	
	public Date getDoneBy() {
		return doneBy;
	}
	
	public void setDoneBy(Date doneBy) {
		this.doneBy = doneBy;
	}
	
	public String getTaskTitle() {
		return taskTitle;
	}
	
	public void setTaskTitle(String taskTitle) {
		this.taskTitle = taskTitle;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Embedded
	public EntityCommonData commonData;
	
	public EntityCommonData getCommonData() {
		return commonData;
	}

	public void setCommonData(EntityCommonData commonData) {
		this.commonData = commonData;
	}
	
	public Task(Long userId, String description, String assignee, Date startOn, Date doneBy, String taskTitle,
		String username, String status) {
		this.userId = userId;
		this.description = description;
		this.assignee = assignee;
		this.startOn = startOn;
		this.doneBy = doneBy;
		this.taskTitle = taskTitle;
		this.userName = username;
		this.status = status;
	}
	
	public Task() {
		
	}
}