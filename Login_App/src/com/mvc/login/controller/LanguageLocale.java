package com.mvc.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;
import java.text.*;

/**
 * Servlet implementation class LanguageLocale
 */
@WebServlet("/LanguageLocale")
public class LanguageLocale extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LanguageLocale() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//Create String Language based on link clicked
		String[] planguage = request.getParameter("language").split("_");
		String language = planguage[0];
		String country = planguage[1];
		
		//Set Language and Country
		Locale locale = new Locale(language, country);
		
		//Set Language to session
		HttpSession session = request.getSession();
		session.setAttribute("language", request.getParameter("language"));

		//Get String of which jsp page/url user was from
		String[] initialUrl = request.getParameter("url").split("/");
		String url = initialUrl[initialUrl.length - 1];
		
		//Return back to jsp page
		request.getRequestDispatcher(url).forward(request, response);
	}

}
