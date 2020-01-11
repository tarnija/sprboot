package com.springbootweb.service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbootweb.dao.TaskRepository;
import com.springbootweb.model.Task;

@Service
public class TodoService {
@Autowired
TaskRepository taskdao;
    private static List<Task> todos = new ArrayList<Task>();
    private static int todoCount = 3;

   

    public List<Task> retrieveTasks(String uname) {
        List<Task> filteredTodos = taskdao.findTaskByUname(uname);
     
        return filteredTodos;
    }

	public Task addTask(String taskTitle,String description,String assignee, String starton,String doneby,String status, int id, String name) {
		Task task=new Task();
		try {
		
			task.setUserid(id); 
			task.setDescription(description);
			task.setAssignee(assignee);
		SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd");
		Date d=f.parse(starton);
		task.setStartOn(d);
		Date doneBy=f.parse(doneby);
		task.setDoneBy(doneBy);
		task.setTaskTitle(taskTitle);
		 
		    task.setStatus(status);
		    task.setUname(name);
		    taskdao.save(task);
		    return task;
		}
		catch (Exception e) {
		e.printStackTrace();
		}
		return task;
		
	}

	public void delTask(String id) {
		taskdao.deleteById(Integer.parseInt(id));
		
	}

	public void assigntask(String username, String adminname) {
		List<Task> usertodo=taskdao.findTaskByUname(username);
		for(Task todo:usertodo) {
			todo.setUname(adminname);
			taskdao.save(todo);
		}
		
	}
}
