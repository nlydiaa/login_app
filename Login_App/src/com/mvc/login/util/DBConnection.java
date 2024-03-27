package com.mvc.login.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	public static Connection createConnection() {
		
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/userdb?useTimezone=true&serverTimezone=UTC"; //Added timezone due to an error
		String username = "root";
		String password = "mysql";
		
		try {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
			con = DriverManager.getConnection(url, username, password); //Getting connection
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
		
	}

}
