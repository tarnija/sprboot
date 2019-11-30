package com.springbootweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbootweb.model.UserNew;
import com.springbootweb.service.LoginService;

import lombok.extern.slf4j.Slf4j;

@Controller
@SessionAttributes({"name","id"})
@Slf4j
public class LoginController {
	@Autowired
    LoginService service;

    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String showLoginPage(ModelMap model,@RequestParam(value = "error", required = false) String error){
    	 if(error != null) {
    		 model.addAttribute("errorMessage", "Invalid Credentials !!!");
    	 }
        return "login";
    }

    @RequestMapping(value="/loginCredentials", method = RequestMethod.GET)
    public String showWelcomePage(ModelMap model){

SecurityContext context = SecurityContextHolder.getContext();
String  name=context.getAuthentication().getName();
       UserNew u = service.findUser(name);

        
        model.addAttribute("id", u.getId());
        model.addAttribute("name", name);
      

        return "redirect:/list-todos";
    }
    @RequestMapping(value="/performLogOut", method = RequestMethod.GET)
    public String performLogOut(ModelMap model){
    	model.addAttribute("msg", "you have been successfully logged out !!!");
        return "login";
    }
    @RequestMapping(value="/errorHandle", method = RequestMethod.GET)
    public String errorHandle(ModelMap model){
    	model.addAttribute("errorMessage", "Invalid Credentials !!!");
    	return "login";
    }
}
