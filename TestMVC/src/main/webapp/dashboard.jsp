<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="_bootstrap.jsp" %>
<title>Insert title here</title>
</head>
<body>
 <%
   Object obj = session.getAttribute("isLoggedIn");
   if(obj!=null){
 %>
  <%@include file="_header.jsp" %>
 <%}else{
	response.sendRedirect("sign-in.jsp"); 
 }%>
</body>
</html>