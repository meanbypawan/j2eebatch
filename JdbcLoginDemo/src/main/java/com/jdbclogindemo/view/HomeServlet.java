package com.jdbclogindemo.view;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/home")
public class HomeServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, 
	HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		HttpSession session = request.getSession(false);
		
		if(session != null) {
			
			String uname = (String) 
					session.getAttribute("USERNAME");
			String s_id = session.getId();
			Cookie[] arr = request.getCookies();
			String se_id = "";
			for(Cookie c : arr) {
				if(c.getName().equals("JSESSIONID"))
					se_id = c.getValue();
			}
			pw.println("<!DOCTYPE html>");
			pw.println("<html>");
			pw.println("<head>");
			pw.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
			pw.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
			pw.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>");
			pw.println("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>");
			pw.println("<title>Home Page</title>");
			pw.println("</head>");
			pw.println("<body>");
			pw.println("<div class=\"container\">");
			pw.println("<h1 style=\"color:slateblue;"
			+ "text-align:center\">Welcome "+uname+" , to your"
			+" home page</h1>");
			pw.println("<h1 style=\"color:slateblue;"
					+ "text-align:center\">your session id from"
					+ " server : "+ s_id + "</h1>");
			pw.println("<h1 style=\"color:slateblue;"
					+ "text-align:center\">your session id from"
					+ " cookie : "+ se_id + "</h1>");
			pw.println("<h1 style=\"color:slateblue;"
					+ "text-align:center\">Welcome "+uname+" , to your"
					+" home page</h1>");
			pw.println("<p>Click <a href=\"logout\">HERE</a> "
					+ "to logout</p>");
			pw.println("</div>");
			pw.println("</body>");
			pw.println("</html>");
		} else {
			response.sendRedirect("error?msg=notloggedin");
		}
	}
}
