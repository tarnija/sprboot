package com.springbootweb.service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbootweb.dao.TodoRepository;
import com.springbootweb.model.Todo;

@Service
public class TodoService {
@Autowired
TodoRepository tododao;
    private static List<Todo> todos = new ArrayList<Todo>();
    private static int todoCount = 3;

    static {
		/*
		 * todos.add(new Todo(1, "admin", "Learn Spring MVC", new Date(), false));
		 * todos.add(new Todo(2, "admin", "Learn Struts", new Date(), false));
		 * todos.add(new Todo(3, "admin", "Learn Hibernate", new Date(), false));
		 */
    }

    public List<Todo> retrieveTodos(String uname) {
        List<Todo> filteredTodos = tododao.findTodoByUname(uname);
        List<String> task=new ArrayList<>();
        for(Todo todo:filteredTodos) {
        	String t=todo.getDoer()+" should "+todo.getTask()
        	+" on "+todo.getDate()+" at "+todo.getTime().getHours()+":"+todo.getTime().getMinutes();
        task.add(t);
        }
        return filteredTodos;
    }

	public Todo addTodo(String task, String doer, String date, String time, int id, String name) {
		Todo todo=new Todo();
		try {
		
		todo.setUserid(id); 
		todo.setDoer(doer);
		todo.setTask(task);
		SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd");
		Date d=f.parse(date);
		todo.setDate(d);		
		  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		    Date parsedDate = dateFormat.parse(date+" "+time);
		    Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());
		    todo.setTime(timestamp);
		    todo.setDone(false);
		    todo.setUname(name);
		    tododao.save(todo);
		    return todo;
		}
		catch (Exception e) {
		e.printStackTrace();
		}
		return todo;
		
	}
}
