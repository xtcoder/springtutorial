package com.habibur.notices.controllers.dau;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class User {
	
	@NotBlank(message="User name Can not be blank")
	@Size(min=4, max=100)
	private String username;
	private String email;
	private String password;
	private boolean enabled = false;
	private String authority;
	
	public User(){
		
	}
	
	public User(String userName, String email, String password, boolean enabled, String authority) {
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
	

}
