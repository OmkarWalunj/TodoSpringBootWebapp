package com.weblogin.webapp.Todo;

import java.time.LocalDate;
import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.validation.Valid;

@Controller
public class JpaTodoController {

	private TodoRepository todoRepository;
	
	
	public JpaTodoController(TodoRepository todoRepository) {
		super();
		
		this.todoRepository=todoRepository;
	}
	
	@RequestMapping("List-Service")
	public String listAllTodos(ModelMap model) {
		String username=getLoggedinUsername(model);
		
		List<Todo> alltodos=todoRepository.findByUserName(username);
		model.addAttribute("alltodos",alltodos);
		return "todo";
	}
	
	@RequestMapping(value="add-todo" , method=RequestMethod.GET)
	public String showAllTodos(ModelMap model) {
		String username=getLoggedinUsername(model);
		
		Todo todo=new Todo(2,username,"",LocalDate.now(),false);
		model.put("todo", todo);
		return "addtodo";
	}

	
	@RequestMapping(value="add-todo" , method=RequestMethod.POST)
	public String addNewTodos(ModelMap model,@Valid Todo todo,BindingResult result) {
		if(result.hasErrors()) {
			return "addtodo";
		}
		String username=getLoggedinUsername(model);
		todo.setUserName(username);
		todoRepository.save(todo);
		//todoRepository.add(username, todo.getDescription(),todo.getTargetDate(), false);
		return "redirect:List-Service";
	}
	@RequestMapping("delete-todo")
	public String deleteTodos(@RequestParam int id ) {
		todoRepository.deleteById(id);
		return "redirect:List-Service";
	}
	@RequestMapping(value="update-todo", method=RequestMethod.GET)
	public String updateTodo(@RequestParam int id ,ModelMap model) {
		Todo todo=todoRepository.findById(id).get();
		model.addAttribute("todo", todo);
		return "addtodo";
	}
	@RequestMapping(value="update-todo" , method=RequestMethod.POST)
	public String updateTodos(ModelMap model,@Valid Todo todo,BindingResult result) {
		if(result.hasErrors()) {
			return "addtodo";
		}
		String username=getLoggedinUsername(model);
		todo.setUserName(username);
		todoRepository.save(todo);
		return "redirect:List-Service";
	}
	private String getLoggedinUsername(ModelMap model) {
		Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
		return authentication.getName();	
	}
}
