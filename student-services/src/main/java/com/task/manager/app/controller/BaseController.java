package com.task.manager.app.controller;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class BaseController {

	private Authentication getAuthentication() {
		return SecurityContextHolder.getContext().getAuthentication();
	}
	
	public String getLoggedInUserName() {
		Authentication authentication = getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
		    String currentUserName = authentication.getName();
		    return currentUserName;
		}
		return null;
	}
	
	public String getUserLoggedInStatus(String path) {
		Authentication auth = getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
	    	if(auth.getAuthorities().iterator().next().getAuthority().equalsIgnoreCase("admin")) {
	    		return "redirect:/task-manager/app/admin/dashboard";
	    	}
	    	else {
	    		return "redirect:/task-manager/app/user/dashboard";
	    	}
	    }
		return path;
	}
}
