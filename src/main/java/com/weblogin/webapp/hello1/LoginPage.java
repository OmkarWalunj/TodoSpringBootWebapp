//package com.weblogin.webapp.hello1;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
//@Controller
//public class LoginPage {
//	
//	private Authentication authentication;
//	
//	public LoginPage(Authentication authentication) {
//		super();
//		this.authentication=authentication;
//	}
//	
//	@RequestMapping(value="Login" , method=RequestMethod.GET)
//	public String gotoLoginPage() {
//		return "login";
//	   }
//	
//	@RequestMapping(value="Login" , method=RequestMethod.POST)
//	public String gotoWelcomePage(@RequestParam String username , @RequestParam String password,ModelMap model) {
//		if(authentication.authenticate(username, password)) {
//			model.put("username", username);
//			model.put("password",password);
//			return "welcome";
//		}
//		if(authentication.auth(username,password)) {
//			model.put("error", "Invalid username and passward ");
//		}else if(!authentication.authpassword(password)) {
//			model.put("error", "Invalid passward ");
//		}
//		else {
//			model.put("error", "Invalid username");
//		}
//		return "login";
//	}
//}
