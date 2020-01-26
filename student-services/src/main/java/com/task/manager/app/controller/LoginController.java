package com.task.manager.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.task.manager.app.utils.AppURLs;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping(value = AppURLs.BASE_URL_APP)
public class LoginController extends BaseController {
	
	/*
	 * @Autowired private LoginServiceImpl service;
	 */
	  
	@GetMapping("/home")
	public String showhomepage(@RequestParam(value = "error", required = false) String error){
		return getUserLoggedInStatus("home");
	}
	  
	@GetMapping("/login")
    public String showLoginPage(ModelMap map, @RequestParam(value = "error", required = false) String error){
		if(error != null) {
			map.addAttribute("errorMessage", "Invalid Credentials !!!");
    	}
		map.put("title", "Login");
        return getUserLoggedInStatus("login");
    }

	/*
	 * @GetMapping("/loginCredentials") public String
	 * showWelcomePage(@ModelAttribute Model model){ UserNew userNew =
	 * service.findUser(getLoggedInUserName()); model.addAttribute("id",
	 * userNew.getId()); model.addAttribute("userName", userNew.getName());
	 * model.addAttribute("title", "Dashboard"); return
	 * "redirect:/app/user/dashboard"; }
	 */

	@GetMapping("/performLogOut")
    public String performLogOut(ModelMap model){
    	model.addAttribute("msg", "you have been successfully logged out !!!");
    	model.put("title", "Login");
        return "login";
    }
}
