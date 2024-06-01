<%@page import="service.ErrorResponse"%>
<%@page import="java.util.HashMap"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="java.lang.reflect.Type"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.google.gson.reflect.TypeToken"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.Gson"%>
<%
Gson gson = new Gson();
 try{
  
  JsonArray jsonArray = gson.fromJson(request.getReader(), JsonArray.class);

  Type listType =  new TypeToken<ArrayList<Category>>(){}.getType();
  
  ArrayList<Category> list = gson.fromJson(jsonArray, listType);
  
  boolean status = CategoryDAO.saveInBulk(list);
  HashMap<String,String> hm = new HashMap<String,String>();
  if(status){
	  response.setContentType("application/json");
	  response.setStatus(HttpServletResponse.SC_OK);
	  hm.put("message","All category saved");
	  String jsonData = gson.toJson(hm);
	  response.getWriter().write(jsonData);
  }
 }
 catch(Exception e){
	 ErrorResponse error = new ErrorResponse(500,"Internal Server Error");
	 String jsonData = gson.toJson(error);
	  response.setContentType("application/json");
	  response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	  response.getWriter().write(jsonData);
 
 }
%>