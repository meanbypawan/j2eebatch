<%@page import="dao.ReviewDAO"%>
<%@page import="model.Review"%>
<%@page import="model.Product"%>
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
<body style="background-color: #766579;">
<%@include file="__header.jsp"%>
<%
  Product p = ProductDAO.getProductById(product.getId());
%>
<div class="container mt-3">
  <div class="row">
     <div class="col-md-6 d-flex flex-column bg-light">
        <img id="mainImage" src="<%=p.getThumbnail() %>" style="width:100%;height:300px;box-shadow: 0 0 10px black;"/>
        <div class="d-flex flex-row justify-content-around mt-2 bg-light">
          <%
            ArrayList<String>imageList = p.getImages();
            int index=0;
          for(String image : imageList){%>
        	 <img onclick="changeImage(this)" src="<%=image%>" width="70px" height="70px"/> 
          <%}%>
        </div>
     </div>
     <div class="col-md-5 offset-1 d-flex flex-column">
        <h2 class=""><%=p.getTitle() %> (<%=p.getBrand() %>)</h2>
        <h4>Price : <label class="text-success"><%= p.getPrice()%> Rs.</label></h4>
        <small><%=p.getDescription() %></small>
        <button class="mt-2" style="width:90%;border: none; border-radius:5px;">Add To Cart</button>
        <% ArrayList<Review> reviewList = ReviewDAO.getReviews(product.getId());
          %>
        <h6>Reviews(<%=reviewList.size() %>)</h6>
        <%
          for(Review review : reviewList){%>
        	 <div class="mt-1">
        	  <div class="d-flex justify-content-between">
        	  <label><%=review.getReviewerName() %>(<%=review.getReviewerEmail() %>)</label>
        	  <label><%=review.getDate() %></label>
        	 </div>
        	 </div>  
          <%}
        %>
     </div>
  </div>
</div>
<script>
  function changeImage(currentImage){
	  var mainImage = document.getElementById("mainImage");
	  var temp = mainImage.src;
	  mainImage.src = currentImage.src;
	  currentImage.src = temp;
  }
</script>
</body>
</html>