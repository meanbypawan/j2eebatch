<%@page import="model.User"%>
<%@page import="dao.UserDAO"%>
<jsp:useBean id="user" class="model.User"></jsp:useBean>
<jsp:setProperty name="user" property="*"/>

<%
   if(UserDAO.authenticate(user)!=null){
     User.saveUser(session,user);
   %>
	  <script>
	    window.alert("Sign in success..");
	    window.location.href="../";
	  </script>  
   <%}else{%>
	  <script>
	    window.alert("Oops! someting went wrong..");
	    window.location.href="../sign-in.jsp";
	  </script>  
   <%}
%>