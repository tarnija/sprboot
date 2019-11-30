package com.springbootweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbootweb.service.TodoService;
@Controller
@SessionAttributes({"name","id"})
public class TodoController {
	  @Autowired
	    TodoService service;

	    @RequestMapping(value="/list-todos", method = RequestMethod.GET)
	    public String showTodos(ModelMap model){
	        int userid =  (int) model.get("id");
	        model.put("todos", service.retrieveTodos(userid));
	        return "welcome";
	    }
	    @RequestMapping(value="/addTodo", method = RequestMethod.POST)
//	    public String addTodos(ModelMap model,@RequestParam String task,@RequestParam String doer,@RequestParam String date,@RequestParam String time){
	    public String addTodos(ModelMap model,@RequestParam String task,@RequestParam String doer,@RequestParam String date,@RequestParam String time){

	    int id= (int) model.getAttribute("id");
	    	service.addTodo(task,doer,date,time,id);
	    System.out.println("added");
	        return "redirect:/list-todos";
	    }
	    
}
