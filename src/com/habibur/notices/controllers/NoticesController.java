package com.habibur.notices.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.habibur.notices.controllers.service.UserService;

@Controller
public class NoticesController {
	
	private UserService userService;
	
	
	
	public UserService getUserService() {
		return userService;
	}
	
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}


	@RequestMapping("/create")
	public String createNotice(){
		return "createnotice";
	}
	
	
	@RequestMapping("/show")
	public String showNotices(){
		
		return "shownotices";
	}
	
	
	@RequestMapping("/dsi")
	public String showDSi(Model m){
		String s2 = userService.getInfoService();
		m.addAttribute("key50", s2);
		return "dsi";
	}

}
