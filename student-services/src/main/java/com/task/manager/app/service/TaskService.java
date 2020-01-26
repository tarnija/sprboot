package com.task.manager.app.service;

import java.util.List;

import com.task.manager.app.model.Task;

public interface TaskService {

    public List<Task> retrieveTasks(String username);
    public List<Task> getAllUserTask(Long userId);
	public Task addTask(Task add);
	public void deleteTask(String userId);
	public void assignTask(String username, String adminname);
}
