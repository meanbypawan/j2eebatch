<%
   if(request.getMethod().equals("POST")){
	   session.setAttribute("isLoggedIN",null);
	   session.setAttribute("adminId", null);
	   session.invalidate();
	   response.sendRedirect("../sign-in.jsp");
   }
%>