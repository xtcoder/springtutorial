package com.habibur.notices.controllers.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.habibur.notices.controllers.dau.User;
import com.habibur.notices.controllers.dau.UserDau;

@Service("userService")
public class UserService {
	
	private UserDau userDau;

	public UserDau getUserDau() {
		return userDau;
	}

	@Autowired
	public void setUserDau(UserDau userDau) {
		this.userDau = userDau;
	}
	
	public void createUser(User user){
		userDau.createUsers(user);
	}
	
	@Secured("ROLE_ADMIN")
	public String getUsers(){
		
		return "USer list set";
	}
	
	
	public String getInfoService(){
		String s = "Test Service data... ha ha";
		return s;
	}
	

}
