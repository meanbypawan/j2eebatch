package com.currencyforwarddemo.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/accept")
public class DecisionServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, 
	HttpServletResponse response) 
			throws ServletException, IOException {
	
		String choice = request.getParameter("radCurrency");
		String pageUrl = "";
		
		switch (choice) {
		case "d":
			pageUrl = "dollar";
			break;
			
		case "p":
			pageUrl = "pound";
			break;			
		}
		
		//server side redirection
		//Servlet Container will send user to specified web page
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher(pageUrl);
		dispatcher.forward(request, response);
	}
}




