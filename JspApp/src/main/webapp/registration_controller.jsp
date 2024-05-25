<%@page import="dao.UserDAO"%>
<%@page import="model.User"%>
<%
 if(request.getMethod().equals("POST")){
  try{
	String username = request.getParameter("username");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	// Encapsulting Data into Model
	User user = new User(username,password,email);
	
	// Passing Model to DAO
	if(UserDAO.save(user))
		out.print("WOW : Registration success...");
	else
		out.print("Registration Failed....");
  }
  catch(Exception e){
	  e.printStackTrace();
	  out.print("Oops! something went wrong....");
  }
 }
 else
  out.print("Can not handle GET/PUT/DELETE");	
%>