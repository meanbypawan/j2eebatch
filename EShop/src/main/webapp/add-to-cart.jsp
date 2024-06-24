<%@page import="dao.CartDAO"%>
<%@page import="model.User"%>
<%
  int productId = Integer.parseInt(request.getParameter("productId"));
  if(User.isLoggedIn(session)){
	 boolean status =  CartDAO.addToCart(productId, Integer.parseInt(session.getAttribute("id").toString()));
     if(status)
    	 out.print("Product successfully added in cart");
  }
  else
	  out.print("please login first");
%>