package com.springbootweb.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springbootweb.model.Task;

public interface TaskRepository extends JpaRepository<Task, Integer> {

	

	List<Task> findTaskByUname(String uname);

}
