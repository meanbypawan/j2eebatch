package com.cookiesdemo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/setcooky")
public class SetCookyServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, 
	HttpServletResponse response) 
			throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		String uname = request.getParameter("txtUname");
		String choice = request.getParameter("radSite");
		String site = "";
		
		switch (choice) {
		case "f":
			site = "facebook.com";
			break;
		case "i":
			site = "instagram.com";
			break;			
		case "t":
			site = "twitter.com";
			break;
		}
		
		Cookie cn = new Cookie("namecooky", uname);
		Cookie cs = new Cookie("sitecooky", site);
		
		cn.setMaxAge(120);
		cs.setMaxAge(120);
		
		response.addCookie(cn);
		response.addCookie(cs);
		
		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
		pw.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
		pw.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>");
		pw.println("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>");
		pw.println("<title>SetCooky Page</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<div class=\"container\">");
		pw.println("<h1 style=\"color:green;"
		+ "text-align:center\">Cookies created on your machine"
		+ "</h1>");
		pw.println("<p>Click <a href=\"getcooky\">HERE</a> to view "
				+ "your cookies</p>");
		pw.println("</div>");
		pw.println("</body>");
		pw.println("</html>");
	}
}




