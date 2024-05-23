package com.currencyconverterdemo.servlet;

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
	
		int amount = Integer.parseInt(
				request.getParameter("txtAmount"));
		String choice = request.getParameter("radCurrency");
		String pageUrl = "";
		
		switch (choice) {
		case "d":
			pageUrl = "dollar?amt="+amount;
			break;
			
		case "p":
			pageUrl = "pound?amt="+amount;
			break;			
		}
		
		//client side redirection
		//Servlet Cointainer will ask client's web browser
		//to generate request to send user to specified web page
		response.sendRedirect(pageUrl);
	}
}




