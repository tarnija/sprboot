package com.springbootweb.controller;

import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springbootweb.model.Todo;
import com.springbootweb.model.UserNew;
import com.springbootweb.service.AdminService;
import com.springbootweb.service.TodoService;
import com.springbootweb.service.UserService;

@Controller
public class WelcomeController {
	@Autowired
	AdminService adminService;
	@Autowired
	UserService userService;
	@Autowired
	TodoService todoService;
	 @RequestMapping(value="/welcomeAdmin", method = RequestMethod.GET)
	    public String welcomeAdmin(ModelMap model){
		 List<UserNew> users=adminService.retrieveUsers();
		 SecurityContext context = SecurityContextHolder.getContext();
			String adminname = context.getAuthentication().getName();
			users=users.stream().filter(p->!p.getName().equalsIgnoreCase(adminname)).collect(Collectors.toList());
			model.put("users", users);
			return "adminwelcome";
		 
	 }
	 @RequestMapping(value = "/getDetail", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
public @ResponseBody ResponseEntity<String> getDetail(ModelMap model, @RequestParam int id) {
	HashMap<String, Object> result = new HashMap<String, Object>();
	String json = null;
	String userdetail=userService.getUserDetails(id);
	String name=userdetail.split("@#@")[0];
	String email=userdetail.split("@#@")[1];
	List<Todo> todo=todoService.retrieveTodos(name);
	String authority=userService.getRole(name);
	result.put("role", authority);
	result.put("taskcount", todo.size());
	result.put("name", name);
	result.put("email", email);
	
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
	 @RequestMapping(value = "/delUser", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	 public @ResponseBody ResponseEntity<String> delUser(ModelMap model, @RequestParam int id) {
	 	HashMap<String, Object> result = new HashMap<String, Object>();
	 	String json = null;
		SecurityContext context = SecurityContextHolder.getContext();
		String adminname = context.getAuthentication().getName();
		
	 	String username=userService.deleteUser(id);
	 	
	 	todoService.assigntodo(username,adminname);
	 	
	 	
	 	result.put("done", "done");
	 	
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
	 
}
