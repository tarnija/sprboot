package com.task.manager.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.task.manager.app.service.UserServiceImpl;
import com.task.manager.app.utils.AppURLs;

@Controller
@RequestMapping(value = AppURLs.BASE_URL_APP)
public class SignupController extends BaseController {

	@Autowired
	private UserServiceImpl userService;
	
	@GetMapping("/signup")
    public String showLoginPage(ModelMap map){
    	map.put("title", "Signup");
        return getUserLoggedInStatus("register");
    }
	
	@PostMapping("/signup")
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password, @RequestParam String email, @RequestParam String ques,
    		@RequestParam String ans){
		boolean added=userService.addUser(name, password, email,ques,ans);
		if(added) {
			model.addAttribute("msg", "Added Successfully user!!!!. Please login");
		}
		else {
			model.addAttribute("errorMessage", "User not added");
		}
    	model.put("title", "Login");
		return "login";
	}
}
