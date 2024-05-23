package com.jdbclogindemo.view;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/success")
public class SuccessServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, 
	HttpServletResponse response) 
			throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		String msg = request.getParameter("msg");
		String message = "";
		String pageUrl = "";
		
		switch(msg) {
		case "regsuccess":
			message = "registration successful";
			pageUrl = "login.html";
			break;
		case "logoutsuccess":
			message = "logout successful";
			pageUrl = "login.html";
			break;			
		}
		
		pw.println("<p style=\"color:green;text-align:center\">"
				+ message + "</p>");
		
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher(pageUrl);
		dispatcher.include(request, response);
	}
}


