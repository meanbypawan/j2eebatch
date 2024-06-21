<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="__bootstrap.jsp" %>
</head>
<body>
 <br>
 <%@include file="__header.jsp" %>
 <div class="container d-flex justify-content-center align-items-center" style="height: 85vh;">
    <div class="sign-in-form" style="width:30%; box-shadow: 0 0 10px black;">
      <div class="header bg-danger p-2 d-flex justify-content-center align-items-center">
         <small class="text-white" style="font-weight:bold;">Sign-In Here</small>
      </div>
      <form class="p-2" action="controller/sign-in-action.jsp" method="POST">
         <%@include file="__email_and_password_field.jsp" %>
         <div class="form-group d-flex flex-column align-items-center">
           <button class="btn btn-outline-secondary" style="width:100%;">Sign in</button>
           <a href="sign-up.jsp">
            <small class="mt-2">Create new account ?</small>
           </a>
         </div>
      </form>
    </div>
 </div>
</body>
</html>