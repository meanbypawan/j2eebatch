<%@page import="com.usebeandemo.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Data Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:useBean class="com.usebeandemo.entity.User" id="u"
	scope="page"/>
	<jsp:setProperty property="*" name="u"/>
	
	<div class="container">
		<h1 style="color:slateblue;text-align:center">
			User Details :-
		</h1>
		<h2 style="color:green;text-align:center">
			User Name : <jsp:getProperty property="username" 
			name="u"/>
		</h2>
		<h2 style="color:green;text-align:center">
			User Email : <jsp:getProperty property="email" 
			name="u"/>
		</h2>
		<h2 style="color:green;text-align:center">
			User Contact No : <jsp:getProperty property="contact" 
			name="u"/>
		</h2>
	</div>
</body>
</html>