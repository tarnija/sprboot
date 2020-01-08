package com.springbootweb.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springbootweb.service.UserService;

@Controller
@SessionAttributes("name")
public class NewUserController {
	@Autowired
	UserService userService;
	@RequestMapping(value="/newUser", method = RequestMethod.GET)
    public String showLoginPage(ModelMap model){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken))
	    {
	    	
	    	if(auth.getAuthorities().iterator().next().getAuthority().equalsIgnoreCase("admin"))
	    	{
	    		return "redirect:/welcomeAdmin";
	    	}
	    	else {
	        return "redirect:/list-todos";
	    	}
	    }
        return "register";
    }
	
	@RequestMapping(value="/newUser", method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password ,@RequestParam String email,@RequestParam String ques,@RequestParam String ans){

 
		boolean added=userService.addUser(name, password, email,ques,ans);
		if(added) {
		model.addAttribute("msg", "Added Successfully user!!!!. Please login");
		return "login";
		}
		else {
			model.addAttribute("errorMessage", "User not added");
			return "login";
		}
 }
 
	
	@RequestMapping(value="/verifyUserName",method=RequestMethod.POST, produces = "application/json; charset=utf-8")
	public @ResponseBody ResponseEntity<String> verifyUserName(@RequestParam String name){
		 HashMap<String, String> result = new HashMap<String, String>();
		
		  boolean existwithname=  userService.checkifuserAlreadyExistsWithName(name,result);
		  String json = null;
	        
		   if(existwithname) {
			   result.put("message",  "User Exists");
			  
			    }
			    else {
			    	result.put("message",  "User does not exist");
			    	
			    }
           ObjectMapper map = new ObjectMapper();
	        if (!result.isEmpty()) {
	            try {
	                json = map.writeValueAsString(result);
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	        HttpHeaders responseHeaders = new HttpHeaders(); 
	        responseHeaders.add("Content-Type", "application/json; charset=utf-8"); 
	        return new ResponseEntity<String>(json, responseHeaders, HttpStatus.CREATED);
	}
	
	
	@RequestMapping(value="/verifyUserEmail",method=RequestMethod.POST, produces = "application/json; charset=utf-8")
	public @ResponseBody ResponseEntity<String> verifyUserEmail(@RequestParam String email){
		 HashMap<String, String> result = new HashMap<String, String>();
		
		  boolean existwithemail=  userService.checkifuserAlreadyExists(email,result);
		  String json = null;
	        
		   if(existwithemail) {
			   result.put("message",  "User Exists");
			  
			    }
			    else {
			    	result.put("message",  "User does not exist");
			    	
			    }
           ObjectMapper map = new ObjectMapper();
	        if (!result.isEmpty()) {
	            try {
	                json = map.writeValueAsString(result);
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	        HttpHeaders responseHeaders = new HttpHeaders(); 
	        responseHeaders.add("Content-Type", "application/json; charset=utf-8"); 
	        return new ResponseEntity<String>(json, responseHeaders, HttpStatus.CREATED);
	}
	
}
