<%@page import="model.Admin"%>
<%@page import="dao.AdminDAO"%>
<jsp:useBean id="admin" class="model.Admin"></jsp:useBean>
<jsp:setProperty name="admin" property="*"></jsp:setProperty>
<%
   Admin obj =  AdminDAO.authenticate(admin); 
   if(obj!=null){
	   session.setAttribute("adminId", obj.getId());
	   session.setAttribute("isLoggedIn", true);
	   response.sendRedirect("../dashboard.jsp");
   }
   else
	   out.print("Sign in failed...");
%>