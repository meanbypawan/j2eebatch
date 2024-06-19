<!DOCTYPE html>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <%@include file="__bootstrap.jsp" %>
</head>
<body>
<%@include file="__header.jsp" %>
<br>
<div class="container">
 <div class="row">
     <%
        ArrayList<Product> al = ProductDAO.getProductList();
        for(Product p : al){
        String title = p.getTitle();
        if(title.length()>=10)
         title = title.substring(0,10);
      %>
       <div class="col-md-3 p-2">
        <div class="d-flex flex-column align-items-center" style="box-shadow: 0 0 5px grey;">
         <img src="<%=p.getThumbnail()%>" width="100%" height="200px"/>
         <h3><%=title%></h3>
         <h5 style="margin:0;"><label class="text-success"><%=p.getPrice() %></label> Rs.</h5>
         <a href="view-more.jsp?id=<%=p.getId()%>"><small style="cursor:pointer;" class="text-primary mb-2">View more</small></a>
         <button class="btn btn-secondary text-white" style="width:90%;">Add To Cart</button>        
        </div>
       </div>
     <%}%>
 </div>
</div>
</body>
</html>
