package com.springbootweb.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springbootweb.model.Task;
import com.springbootweb.service.TodoService;

@Controller
@SessionAttributes({ "name", "id" })
public class DashboardUserController {
	@Autowired
	TodoService service;

	@RequestMapping(value = "/dashboard-user", method = RequestMethod.GET)
	public String showTodos(ModelMap model) {
		String name = (String) model.get("name");
		List<Task> list = service.retrieveTasks(name);

		model.put("tasks", list);
		return "dashboardUser";
	}

	@RequestMapping(value = "/addTask", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public @ResponseBody ResponseEntity<String> addTodos(ModelMap model, @RequestParam String taskTitle, @RequestParam String description, @RequestParam String assignee, @RequestParam String starton,@RequestParam String doneby,@RequestParam String status) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		String json = null;
		SecurityContext context = SecurityContextHolder.getContext();
		String name = context.getAuthentication().getName();
		int id = (int) model.getAttribute("id");
		Task task = service.addTask(taskTitle, description, assignee, starton,doneby,status, id, name);
		System.out.println("added");

		result.put("data", task.getId());
		ObjectMapper map = new ObjectMapper();
		if (!result.isEmpty()) {
			try {
				json = map.writeValueAsString(result);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "application/json; charset=utf-8");
		return new ResponseEntity<String>(json, responseHeaders, HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/delTodo", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
//    public String addTodos(ModelMap model,@RequestParam String task,@RequestParam String doer,@RequestParam String date,@RequestParam String time){
public @ResponseBody ResponseEntity<String> delTodos(ModelMap model, @RequestParam String task) {
	HashMap<String, Object> result = new HashMap<String, Object>();
	String json = null;
	SecurityContext context = SecurityContextHolder.getContext();
	String name = context.getAuthentication().getName();
	int id = (int) model.getAttribute("id");
	 service.delTask(task);
	System.out.println("deleted");

	result.put("output", "deleted");
	ObjectMapper map = new ObjectMapper();
	if (!result.isEmpty()) {
		try {
			json = map.writeValueAsString(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	HttpHeaders responseHeaders = new HttpHeaders();
	responseHeaders.add("Content-Type", "application/json; charset=utf-8");
	return new ResponseEntity<String>(json, responseHeaders, HttpStatus.CREATED);
}

	@GetMapping("/profile")
	public String getUserProfile() {
		return "profile";
	}
	
	/*@GetMapping("/notes")
	public String getUserNotes() {
		return "notes";
	}*/
	
	@GetMapping("/documents")
	public String getUserDocs() {
		return "documents";
	}
	
	@GetMapping("/settings")
	public String getAppSettings() {
		return "settings";
	}
	
	@GetMapping("/app/settings/theme")
	@ResponseBody
	public String updateAppTheme(HttpSession session, @RequestParam(value = "theme", defaultValue = "light")String theme) {
		session.setAttribute("currentTheme", theme);
		return "success";
	}
}
