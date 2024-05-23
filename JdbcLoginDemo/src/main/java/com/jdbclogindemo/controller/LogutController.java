package com.jdbclogindemo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.jdbclogindemo.dao.UserDao;
import com.jdbclogindemo.daoimpl.UserDaoImpl;
import com.jdbclogindemo.pojo.User;

@WebServlet("/logout")
public class LogutController extends HttpServlet {
	protected void doGet(HttpServletRequest request, 
	HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(false);
		
		if(session != null) {
			session.setAttribute("USERNAME", null);
			session.invalidate();
			response.sendRedirect("success?msg=logoutsuccess");
		} else {
			response.sendRedirect("error?msg=notloggedin");
		}
	}
}
