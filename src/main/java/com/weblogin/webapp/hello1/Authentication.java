package com.weblogin.webapp.hello1;

import org.springframework.stereotype.Service;

@Service
public class Authentication {
	
	public boolean authenticate(String userName,String password) {
		boolean isvalidname=userName.equals("OmkarWalunj");
		boolean isvalidpassword=password.equals("1234");
		return isvalidname && isvalidpassword;
	}
	public boolean authusername(String userName) {
		return userName.equals("OmkarWalunj");
		
	}
	public boolean authpassword(String password) {
		return password.equals("1234");
		
	}
	public boolean auth(String userName,String password) {
		boolean isvalidname=userName.equals("OmkarWalunj");
		boolean isvalidpassword=password.equals("1234");
		return isvalidname == false && isvalidpassword==false;
	}
}
