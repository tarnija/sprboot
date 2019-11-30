package com.springbootweb.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbootweb.service.UserService;

@Controller
@SessionAttributes("name")
public class NewUserController {
	@Autowired
	UserService userService;
	@RequestMapping(value="/newUser", method = RequestMethod.GET)
    public String showLoginPage(ModelMap model){
        return "register";
    }
	
	@RequestMapping(value="/newUser", method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password ,@RequestParam String email,@RequestParam String ques,@RequestParam String ans){
 boolean existswithemail=userService.checkifuserAlreadyExists(email,new HashMap<>());
boolean existswithname= userService.checkifuserAlreadyExistsWithName(name,new HashMap<>());
 if(!existswithemail && !existswithname) {
		boolean added=userService.addUser(name, password, email,ques,ans);
		model.addAttribute("msg", "Added Successfully user!!!!. Please login");
		return "login";
 }
 else if(existswithemail && existswithname)
 {
	 model.addAttribute("errorMessage","User already exists with this email id and username. Restore credentials with Forgot Credentials");
	 return "login";
 }
 else if(existswithemail) {
	 model.addAttribute("errorMessage","User already exists with this email id. Restore credentials with Forgot Credentials");
 return "login";
    }
	else {
		 model.addAttribute("errorMessage","User already exists with this username. Restore credentials with Forgot Credentials");
	 return "login";
	    }
	}
}
