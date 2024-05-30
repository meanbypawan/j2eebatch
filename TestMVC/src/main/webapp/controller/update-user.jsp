<%@page import="dao.UserDAO"%>
<jsp:useBean id="user" class="model.User"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%
 try{
   if(UserDAO.update(user))
	   response.sendRedirect("../user-list.jsp"); 
 }
catch(Exception e){
	out.print("Error...");
}
%>