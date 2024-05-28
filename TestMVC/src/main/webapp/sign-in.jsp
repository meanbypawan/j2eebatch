<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="_bootstrap.jsp"%>
</head>
<body>

<div class="container d-flex justify-content-center align-items-center" style="height:600px; width:100%;">
   <div class="sign-up-form" style="width:30%; height:300px; box-shadow: 0 0 10px grey">
      <div>
         <h6 class="bg-dark text-center text-light">Sign In</h6>
      </div>
      <form method="post" action="controller/sign-in-controller.jsp">
        <%@include file="_form.jsp"%>
      </form>
   </div>
</div>


</body>
</html>