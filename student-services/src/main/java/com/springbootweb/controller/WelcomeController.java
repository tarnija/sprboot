package com.springbootweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelcomeController {
	 @RequestMapping(value="/welcomeAdmin", method = RequestMethod.GET)
	    public String welcomeAdmin(ModelMap model){
			return "adminwelcome";
		 
	 }
	 
}
