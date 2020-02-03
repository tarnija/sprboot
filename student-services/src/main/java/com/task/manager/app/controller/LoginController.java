package com.task.manager.app.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.task.manager.app.utils.AppURLs;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping(value = AppURLs.BASE_URL_APP)
public class LoginController extends BaseController {
	
	@GetMapping("/home")
	public String showhomepage(){
		return getUserLoggedInStatus("home");
	}
	  
	@GetMapping("/login")
    public String showLoginPage(ModelMap map, HttpServletResponse response, @RequestParam(value = "error", required = false) String error){
		if(!StringUtils.isEmpty(error)) {
			if(error.equalsIgnoreCase("invalidcredentials")) {
				map.addAttribute("errorMessage", "Invalid Credentials. Please try again");
			}
			else if(error.equalsIgnoreCase("sessionexpired")) {
				//map.addAttribute("errorMessage", "Your seesion has expired. Please Login");
			}
		}
		map.put("title", "Login");
        return getUserLoggedInStatus("login");
    }

	@GetMapping("/performLogOut")
    public String performLogOut(ModelMap model){
    	model.addAttribute("msg", "You have been successfully logged out !!!");
    	model.put("title", "Login");
        return "login";
    }
}
