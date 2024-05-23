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

@WebServlet("/checkuser")
public class LoginController extends HttpServlet {
	protected void doGet(HttpServletRequest request, 
	HttpServletResponse response) throws ServletException, IOException {
	
		String uname = request.getParameter("txtUname");
		String upass = request.getParameter("txtPass");
		User user = new User(uname, upass);
		UserDao daoImpl = new UserDaoImpl();
		if(daoImpl.checkUserCredentials(user)) {
			HttpSession session = request.getSession(true);
			session.setAttribute("USERNAME", uname);
			session.setMaxInactiveInterval(120);
			response.sendRedirect("home");
		} else {
			response.sendRedirect("error?msg=loginerror");
		}
	}
}
