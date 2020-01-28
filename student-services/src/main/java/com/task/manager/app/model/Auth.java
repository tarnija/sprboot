package com.task.manager.app.model;

import javax.persistence.Entity;

@Entity
public class Auth extends BaseEntity {
 
	private String name;
	
	private String authority;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	public Auth(String name, String authority) {
		this.name = name;
		this.authority = authority;
	}
	
	public Auth() {
		
	}
}
