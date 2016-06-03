package com.habibur.notices.controllers.dau;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class User2 {
	
	@NotBlank(message="User name Can not be blank")
	@Size(min=4, max=100)
	private String username;
	private String email;
	private String password;
	private boolean enabled = false;
	private String authority;
	private List<User> userList;
	
	
	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	
	

	public User2(){
		userList = new ArrayList<User>();
	}
	
	public User2(String userName, String email, String password, boolean enabled, String authority) {
		super();
		this.username = userName;
		this.email = email;
		this.password = password;
		this.enabled = enabled;
		this.authority = authority;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String userName) {
		this.username = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	public String toString(){
		return this.username+" "+this.password+" "+this.email;
	}

}
