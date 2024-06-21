package com.weblogin.webapp.Todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

@Service
public class TodoServiceapp {
	public static List<Todo> todos=new ArrayList<>();
	private static int count=0;
	
	static {
		todos.add(new Todo(++count,"OmkarWalunj","Learn Java",LocalDate.now().plusYears(1),false));
		todos.add(new Todo(++count,"AkshayWalunj","Learn Python",LocalDate.now().plusYears(2),false));
		todos.add(new Todo(++count,"OmkarWalunj","Learn PHP",LocalDate.now().plusYears(1),false));
		todos.add(new Todo(++count,"OmkarWalunj","Learn SpringBoot",LocalDate.now().plusYears(1),false));
	}
	
	public List<Todo> findByUserName(String username){
		Predicate<? super Todo> predicate = todo -> todo.getUserName().equalsIgnoreCase(username);
		return todos.stream().filter(predicate).toList();	}
	
	
	public void deletetask(int id) {
		
		Predicate<? super Todo> predicate = todo -> todo.getId()== id;
		todos.removeIf((Predicate<? super Todo>) predicate);
	}
public Todo findById(int id) {
		
		Predicate<? super Todo> predicate = todo -> todo.getId()== id;
		Todo todo=todos.stream().filter(predicate).findFirst().get();
		return todo;
	}

public void updateTodo(@Valid Todo todo) {
	deletetask(todo.getId());
	todos.add(todo);
	
}

public void addTodo(String userName, String description, LocalDate targetDate, boolean done) {
	todos.add(new Todo(++count,userName,description,targetDate,false));
	
}
}
