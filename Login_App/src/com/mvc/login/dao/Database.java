package com.mvc.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mvc.login.model.User;
import com.mvc.login.util.DBConnection;

public class Database {
	
	public String authenticateUser(User user) {
		
		System.out.println("This is the Database Class");
		
		//Get data input by user
		String username = user.getUsername(); 
		String password = user.getPassword();
		
		System.out.println("\n ...Connecting to Database...");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		String usernameDB = "";
		String passwordDB = "";
		String roleDB = "";
		
		try {
			con = DBConnection.createConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("select username,password,user_role from user");
			
			//Run through data in database to find username and password that links to input by user
			while(resultSet.next()) {
				usernameDB = resultSet.getString("username");
				passwordDB = resultSet.getString("password");
				roleDB = resultSet.getString("user_role");
				
				if(username.equals(usernameDB) && password.equals(passwordDB)) {
					user.setRole(roleDB);
					return "SUCCESS";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "Invalid";
		
	}

}
