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
@RequestMapping(value = AppURLs.BASE_URL_APP_USERS_CREDENTIIALS)
public class CredentialsController extends BaseController {

	@Autowired
	private UserServiceImpl userService;
	
	@GetMapping("/forget")
    public String showLoginPage(ModelMap map){
		map.put("title", "Reset Password");
        return getUserLoggedInStatus("restoreCredentials");
    }
	
	@PostMapping("/restore")
    public String getUserDetails(ModelMap model, @RequestParam String email, @RequestParam String pass){
		boolean done=userService.updateUserPassword(email,pass);
		if(done) {
			model.addAttribute("msg", "Your password has been succcessfully reset !!!!, please login");
		}
		else {
			model.addAttribute("errorMessage", "Error occured while resetting password");
		}
		model.put("title", "Login");
        return "login";
    }
}
