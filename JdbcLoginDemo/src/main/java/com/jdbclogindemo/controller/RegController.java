package com.jdbclogindemo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.jdbclogindemo.dao.UserDao;
import com.jdbclogindemo.daoimpl.UserDaoImpl;
import com.jdbclogindemo.pojo.User;

@WebServlet("/adduser")
public class RegController extends HttpServlet {
	protected void doGet(HttpServletRequest request, 
	HttpServletResponse response) throws ServletException, IOException {
	
		String uname = request.getParameter("txtUname");
		String upass = request.getParameter("txtPass");
		User user = new User(uname, upass);
		UserDao daoImpl = new UserDaoImpl();
		if(daoImpl.addNewUser(user)) {
			response.sendRedirect("success?msg=regsuccess");
		} else {
			response.sendRedirect("error?msg=regerror");
		}
	}
}
