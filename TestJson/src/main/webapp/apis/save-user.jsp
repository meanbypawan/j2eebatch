<%@page import="service.ErrorResponse"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.HashMap"%>
<%@page import="model.User"%>
<%@page import="dao.UserDAO"%>
<jsp:useBean id="user" class="model.User"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%
Gson gson = new Gson();
try{
if(request.getMethod().equals("POST")){
   User u = UserDAO.save(user);
    
	HashMap<String,User> hm = new HashMap<String,User>();
    hm.put("user",u);
    
    String jsonData = gson.toJson(hm);

    response.setContentType("application/json");
    response.setStatus(HttpServletResponse.SC_CREATED);
    
    response.getWriter().write(jsonData);
}
else if(!request.getMethod().equals("POST")){
	ErrorResponse error = new ErrorResponse(404,"Requested Resource Not Available");
	response.setContentType("application/json");
	response.setStatus(404);
	HashMap<String,ErrorResponse> hm = new HashMap<String,ErrorResponse>();
	hm.put("error",error);
	String jsonData = gson.toJson(hm);
	response.getWriter().write(jsonData);
}
}
catch(Exception e){
	ErrorResponse error = new ErrorResponse(500,"Internal Server Error");
	response.setContentType("application/json");
	response.setStatus(500);
	HashMap<String,ErrorResponse> hm = new HashMap<String,ErrorResponse>();
	hm.put("error",error);
	String jsonData = gson.toJson(hm);
	response.getWriter().write(jsonData);
	
}
%>