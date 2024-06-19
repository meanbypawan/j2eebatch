<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="product" class="model.Product"></jsp:useBean>
<jsp:setProperty name="product" property="id"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<%@include file="__bootstrap.jsp" %>
</head>
<body>
<%@include file="__header.jsp"%>
</body>
</html>