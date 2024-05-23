package com.addnumdemo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Sum extends HttpServlet {

	protected void doGet(HttpServletRequest request, 
	HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		int fnum = Integer.parseInt(
				request.getParameter("txtFnum"));
		int snum = Integer.parseInt(
				request.getParameter("txtSnum"));
		int ans = fnum + snum;
		
		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
		pw.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
		pw.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>");
		pw.println("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>");
		pw.println("<title>Sum Page</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<div class=\"container\">");
		pw.println("<h1 style=\"color:slateblue;"
		+ "text-align:center\">Sum of "+fnum+" and "+snum+
		" is "+ans+"</h1>");
		pw.println("</div>");
		pw.println("</body>");
		pw.println("</html>");
	}
}
