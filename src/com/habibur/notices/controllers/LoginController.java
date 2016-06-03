package com.habibur.notices.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.habibur.notices.controllers.dau.User;
import com.habibur.notices.controllers.dau.User2;
import com.habibur.notices.controllers.service.UserService;

@Controller
public class LoginController {
	
	private UserService userService;
	
	

	public UserService getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/login")
	public String showLogin(){
		return "login";
	}
	
	@RequestMapping("/admin")
	public String showAdmin(Model model){
		model.addAttribute("info", "DataFrom Admin controller");
		String s = userService.getUsers();
		model.addAttribute("info2", s);
		return "admin";
	}
	
	@RequestMapping("/registration")
	public String showReg(Model model, User u){
		model.addAttribute("user", new User());
		return "createaccount";
	}
	
	@RequestMapping("/createaccount")
	public String accountCreates(@Valid User user, BindingResult bindingResult){
		if(bindingResult.hasErrors()){
			return "createaccount";
		}
		user.setAuthority("ROLE_USER");
		user.setEnabled(true);
		userService.createUser(user);
		
		return "accountcreated";
	}
	
	@RequestMapping("/bulkuser")
	public String bulkUser(@ModelAttribute("user2") User2 user2){
		System.out.println("test String Habibur");
		System.out.println(user2);
		System.out.println(user2.getUserList());
		List<User> listUser = user2.getUserList();
		for(User user:listUser){
			System.out.println(user);
		}
		return "bulkuser";
	}
}
