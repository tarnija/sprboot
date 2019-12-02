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
public class Todo {
	private int userid;
    private String doer;
    private Date date;
    private String task;
    private String uname;
    private Timestamp time;
    private boolean isDone;
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
		
    
	
    
}
