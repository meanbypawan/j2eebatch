package com.lifecycledemo.servlet;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

public class DemoServlet extends GenericServlet {

	public void init(ServletConfig config) 
			throws ServletException {
		System.out.println("init() called");
	}

	public void service(ServletRequest request, 
	ServletResponse response) 
			throws ServletException, IOException {
		System.out.println("service() called");
	}
	
	public void destroy() {
		System.out.println("destroy() called");
	}
}
