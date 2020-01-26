package com.task.manager.app.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.task.manager.app.model.Task;
import com.task.manager.app.service.TaskService;
import com.task.manager.app.utils.AppURLs;
import com.task.manager.app.utils.AppUtils;

@Controller
@SessionAttributes({ "userName", "id" })
@RequestMapping(value = AppURLs.BASE_URL_APP_USERS)
public class TaskController extends BaseController {

	@Autowired
	private TaskService taskService;
	
	@PostMapping(value = "/task", produces =  MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ResponseEntity<String> addTodos(@RequestBody(required = false) Task task) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		Task addedTask = taskService.addTask(task);
		result.put("data", addedTask.getId());
		String response = AppUtils.convertMapToStr(result);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", MediaType.APPLICATION_JSON_VALUE);
		return new ResponseEntity<String>(response, responseHeaders, HttpStatus.CREATED);
	}
	
	@DeleteMapping(value = "/task", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ResponseEntity<String> delTodos(ModelMap model, @RequestParam String task) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		taskService.deleteTask(task);
		result.put("output", "deleted");
		String response = AppUtils.convertMapToStr(result);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", MediaType.APPLICATION_JSON_VALUE);
		return new ResponseEntity<String>(response, responseHeaders, HttpStatus.CREATED);
	}
}
