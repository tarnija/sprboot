package com.springbootweb.model;


import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Entity
@Getter @Setter @NoArgsConstructor
public class Task {
	private int userid;
    private String description;
    private String assignee;
    private Date startOn;
    private Date doneBy;
    private String taskTitle;
    private String uname;
    private String status;
   
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
		
    
	
    
}
