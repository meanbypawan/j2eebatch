<%@page import="model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="_bootstrap.jsp" %>
</head>
<body>
 <%@include file="_header.jsp" %>
 <%
   Object obj =  session.getAttribute("isLoggedIn");
   if(obj!=null){
 %>
 <div class="container mt-5">
   <table class="table">
    <thead>
      <tr>
        <th>User Id</th>
        <th>Username</th>
        <th>Email</th>
        <th>Age</th>
        <th>City</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
     
     <%
        ArrayList<User> userList = UserDAO.getUserList();
        for(User u : userList){%>
        	<tr>
        	  <td><%=u.getId()%></td>
        	  <td><%=u.getUsername()%></td>
        	  <td><%=u.getEmail()%></td>
        	  <td><%=u.getAge()%></td>
        	  <td><%=u.getCity().getCityName()%></td>
        	  <td>
        	   <a href="update-user.jsp?id=<%=u.getId()%>">
        	     <button class="btn btn-outline-secondary">Edit</button></td>
        	   </a>
        	  <td>
        	  <a href="controller/delete-user.jsp?id=<%=u.getId()%>">
        	    <button class="btn btn-outline-danger">Delete</button>
        	  </a>
        	  </td>
        	</tr> 
        <%}
     %>
    </tbody>
   </table>
 </div>
 <%}else{
	 response.sendRedirect("signin-jsp");
 } %>
</body>
</html>