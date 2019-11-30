package com.springbootweb.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springbootweb.model.Todo;

public interface TodoRepository extends JpaRepository<Todo, Integer> {

	List<Todo> findTodoByUserid(int userid);

}
