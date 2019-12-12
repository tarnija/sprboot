package com.springbootweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springbootweb.model.UserNew;
import com.springbootweb.service.AdminService;

@Controller
public class WelcomeController {
	@Autowired
	AdminService adminService;
	 @RequestMapping(value="/welcomeAdmin", method = RequestMethod.GET)
	    public String welcomeAdmin(ModelMap model){
		 List<UserNew> users=adminService.retrieveUsers();
model.put("users", users);
			return "adminwelcome";
		 
	 }
	 
}
