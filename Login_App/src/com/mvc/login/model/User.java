package com.mvc.login.model;

public class User {
	
	private String username;
	private String password;
	private String role;
	
	public String getUsername() {
		System.out.println("getUsername() Function");
		return username;
	}
	public void setUsername(String username) {
		System.out.println("setUsername() Function");
		this.username = username;
	}
	public String getPassword() {
		System.out.println("getPassword() Function");
		return password;
	}
	public void setPassword(String password) {
		System.out.println("setPassword() Function");
		this.password = password;
	}
	public String getRole() {
		System.out.println("getRole() Function");
		return role;
	}
	public void setRole(String role) {
		System.out.println("setRole() Function");
		this.role = role;
	}

}
