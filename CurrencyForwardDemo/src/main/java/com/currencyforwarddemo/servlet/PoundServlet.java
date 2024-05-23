package com.currencyforwarddemo.servlet;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/pound",
initParams = @WebInitParam(name = "PRATE" , value = "93"))
public class PoundServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, 
	HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		int amount = Integer.parseInt(
				request.getParameter("txtAmount"));
		ServletConfig config = getServletConfig();
		int rate = Integer.parseInt(
				config.getInitParameter("PRATE"));
		
		int ans = amount / rate;
		
		ServletContext context = getServletContext();
		String msg = context.getInitParameter("MESSAGE");
		
		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
		pw.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
		pw.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>");
		pw.println("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>");
		pw.println("<title>Pound Page</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<div class=\"container\">");
		pw.println("<h1 style=\"color:slateblue;"
		+ "text-align:center\">"+msg+" , your amount in pounds : "
				+ans+"</h1>");
		pw.println("</div>");
		pw.println("</body>");
		pw.println("</html>");
	}
}
