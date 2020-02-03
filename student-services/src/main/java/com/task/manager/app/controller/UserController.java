package com.task.manager.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.task.manager.app.model.Task;
import com.task.manager.app.model.UserNew;
import com.task.manager.app.service.AuthService;
import com.task.manager.app.service.LoginService;
import com.task.manager.app.service.TaskService;
import com.task.manager.app.utils.AppURLs;

@Controller
@SessionAttributes({ "userName", "id", "user" })
@RequestMapping(value = AppURLs.BASE_URL_APP_USERS)
public class UserController extends BaseController {

	@Autowired
	private TaskService taskService;

	@Autowired
	private LoginService userService;
	
	@Autowired
	private AuthService authService;

	@GetMapping("/dashboard")
	public String showTodos(ModelMap map) {
		if(!StringUtils.isEmpty(getLoggedInUserName())) {
			UserNew user = userService.findUser(getLoggedInUserName());
			if(user == null) {
				return "redirect:/task-manager/app/login";
			}
			else if(user.getFirstName() == null) {
				return "redirect:/task-manager/app/user/profile/"+user.getId();
			}
			map.put("user", user);
			List<String> users = authService.findAllUsersExceptAdmin();
			map.put("users", users);
			List<Task> tasks = taskService.getAllUserTask(user.getId());
			map.put("tasks", tasks);
			map.put("title", "Dashboard");
			map.put("currentUserName", getLoggedInUserName());
			return "dashboardUser";
		}
		return "redirect:/task-manager/app/login/";
	}
}
