package com.mvc.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.login.dao.Database;
import com.mvc.login.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Get parameters from login form
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		//Create database object
		Database loginDao = new Database();
		
		//Create new user object
		User user = new User();
		
		//Set user's details
		System.out.println("Go to User Class");
		user.setUsername(username);
		user.setPassword(password);
		
		//Create string that will hold the return of login is successful
		//This will be returned from Database class
		String userValidate = loginDao.authenticateUser(user);
		
		if(username == null || username == "" || password == null || password == "" ) {
			
			System.out.println("Empty Fields");
			
			request.setAttribute("error", "Fields cannot be empty!");
			request.getRequestDispatcher("login.jsp").forward(request,response);
			
		} else {
			
			if(userValidate.equals("SUCCESS")) {
				
				HttpSession session = request.getSession(true);
				
				response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
				response.setHeader("Expires", "0"); // Proxies.
				
				//Set user's details in current session
				session.setAttribute("User_Info", user);
				
				if(user.getRole().equals("User")) {
					
					request.getRequestDispatcher("studentHome.jsp").forward(request, response);
					
				} else if(user.getRole().equals("Manager")) {
					
					request.getRequestDispatcher("managerHome.jsp").forward(request, response);
					
				}
				
			} else {
				//Print out error
				request.setAttribute("error", "loginError");
				request.getRequestDispatcher("login.jsp").forward(request,response);
			}
			
		}
		
	}

}
