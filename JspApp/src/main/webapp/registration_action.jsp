<%@page import="java.sql.PreparedStatement"%>
<%@page import="service.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%
  Connection con = null;
  try{
	  String username = request.getParameter("username");
	  String email = request.getParameter("email");
	  String password = request.getParameter("password");
	  
	  con = GetConnection.getConnection();
	  
	  String sql = "insert into user(username,email,password) values(?,?,?)";
	  PreparedStatement ps = con.prepareStatement(sql);
	  ps.setString(1,username);
	  ps.setString(2, email);
	  ps.setString(3, password);
	  
	  int updatedCount = ps.executeUpdate();
      if(updatedCount !=0){%>
        <script>
          window.alert("Registration success...");
        </script>
      <%}
      else
    	  out.print("Failed...");
  }
  catch(Exception e){
	  out.print("Oops! something went wrong....");
	  e.printStackTrace();
  }
  finally{
	  try{
		  con.close();
	  }
	  catch(Exception e){
		  e.printStackTrace();
	  }
  }
   // We have to store this data in database
%>