package com.task.manager.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.task.manager.app.dao.TaskRepository;
import com.task.manager.app.model.Task;

@Service("taskService")
public class TaskServiceImpl implements TaskService {

	@Autowired
	private TaskRepository taskdao;

	@Override
    public List<Task> retrieveTasks(String username) {
        if(!StringUtils.isEmpty(username))
        	return taskdao.findTaskByUserName(username);
        else return null;
    }

	@Override
	public void deleteTask(String taskId) {
		taskdao.deleteById(Long.parseLong(taskId));
	}

	@Override
	public void assignTask(String username, String adminname) {
		List<Task> userTasks= retrieveTasks(username);
		userTasks.stream().forEach( task -> task.setUserName(username));
	}

	@Override
	public Task addTask(Task task) {
		return taskdao.save(task);
	}

	@Override
	public List<Task> getAllUserTask(Long userId) {
		return taskdao.findTaskByUserId(userId);
	}
}