<%@page import="dao.UserDAO"%>
<%@page import="model.User"%>
<%
  if(request.getMethod().equals("POST")){
	  try{
		  String email = request.getParameter("email");
		  String password = request.getParameter("password");
	  
	      User user = new User();
	      user.setEmail(email);
	      user.setPassword(password);
	      
	      user = UserDAO.authenticate(user);
	      if(user!=null)
	    	  out.print("Sign in success");
	      else
	    	  out.print("Sign in failed...");
	  }
	  catch(Exception e){
		  e.printStackTrace();
	  }
  }
  else
	  out.print("Can Handle Other request : GET.");
%>