<%@page import="dao.UserDAO"%>
<jsp:useBean id="user" class="model.User"></jsp:useBean>
<jsp:setProperty name="user" property="id"></jsp:setProperty>
<%
  Object obj = session.getAttribute("isLoggedIn");
  if(obj!=null){
	  // Call DAO Method to remove user
	  if(UserDAO.deleteUser(user.getId())){%>
		  <script>
		    window.alert("User delete successfully...");
		    window.location.href="../user-list.jsp";
		  </script>  
	  <%}
  }
  else
	 response.sendRedirect("../sign-in.jsp");  
%>