<%@page import="dao.CartDAO"%>
<%@page import="model.User"%>
<%
  int productId = Integer.parseInt(request.getParameter("productId"));
  boolean status =  CartDAO.addToCart(productId, Integer.parseInt(session.getAttribute("id").toString()));
  if(status)
    out.print("Product successfully added in cart");
%>