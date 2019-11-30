package com.springbootweb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter @Setter @NoArgsConstructor
public class UserNew {
	 @Id
	    @GeneratedValue(strategy=GenerationType.AUTO)
	    private Integer id;
	
	    private String name;
	    
	    private String password;

		private String email;

		private String securityQuestion;
		
		private String answer;

	
		


	}
