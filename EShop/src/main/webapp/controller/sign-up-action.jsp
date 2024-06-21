<%@page import="dao.UserDAO"%>
<jsp:useBean id="user" class="model.User"></jsp:useBean>
<jsp:setProperty name="user" property="*"/>

<%
   if(UserDAO.save(user)){%>
	  <script>
	    window.alert("Sign up success..");
	    window.location.href="../sign-in.jsp";
	  </script>  
   <%}else{%>
	  <script>
	    window.alert("Oops! someting went wrong..");
	    window.location.href="../sign-up.jsp";
	  </script>  
   <%}
%>