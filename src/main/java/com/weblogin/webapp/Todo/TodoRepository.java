package com.weblogin.webapp.Todo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TodoRepository extends JpaRepository<Todo,Integer>{
	public List<Todo> findByUserName(String username);
}
