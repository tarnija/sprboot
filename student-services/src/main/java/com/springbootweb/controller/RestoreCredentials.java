package com.springbootweb.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springbootweb.service.UserService;

@Controller
@SessionAttributes("name")
public class RestoreCredentials {
	@Autowired
	UserService userService;
	@RequestMapping(value="/forgetCredentials", method = RequestMethod.GET)
    public String showLoginPage(ModelMap model){
        return "restoreCredentials";
    }
	@RequestMapping(value="/restoreCredentials", method = RequestMethod.POST)
    public String getUserDetails(ModelMap model,@RequestParam String email){
		/*
		 * boolean exists=userService.checkifuserAlreadyExists(email); boolean
		 * existwithname= userService.checkifuserAlreadyExistsWithName(email);
		 * if(exists||existwithname) { String msg=
		 * userService.getUserCredentials(email); model.addAttribute("msg", msg); } else
		 * { model.addAttribute("errorMessage",
		 * "User with email:"+email+" does not exist"); }
		 */
        return "restoreCredentials";
    }
	  @RequestMapping(value="/verify",method=RequestMethod.POST, produces = "application/json; charset=utf-8")
      public @ResponseBody ResponseEntity<String> verify(@RequestParam String email,ModelMap model ){
		  HashMap<String, String> result = new HashMap<String, String>();
		  boolean exists=userService.checkifuserAlreadyExists(email,result);
		  boolean existwithname=  userService.checkifuserAlreadyExistsWithName(email,result);
		  String json = null;
	       
		   if(exists||existwithname) {
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
