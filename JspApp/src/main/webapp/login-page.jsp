<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container d-flex justify-content-center align-items-center" style="height:600px; width:100%;">
   <div class="sign-up-form" style="width:30%; height:300px; box-shadow: 0 0 10px grey">
      <div>
         <h6 class="bg-dark text-center text-light">Sign In</h6>
      </div>
      <form method="post" action="signin_controller.jsp">
      <div class="form p-2">
        <div class="form-group">
          <input type="email" name="email" placeholder="Enter Email" class="form-control"/>
        </div>
        <div class="form-group">
          <input type="password" name="password" placeholder="Enter password" class="form-control"/>
        </div>
         
         <div class="form-group">
           <button class="btn btn-primary" type="submit">Submit</button>
        </div>
      </div>
      </form>
   </div>
</div>


</body>
</html>