<%@page import="java.util.HashMap"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Type"%>
<%@page import="com.google.gson.reflect.TypeToken"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.Gson"%>
<%
  if(request.getMethod().equals("POST")){
	Gson gson = new Gson();
	try{
	 JsonArray jsonArray = gson.fromJson(request.getReader(), JsonArray.class);
	 Type listType = new  TypeToken<ArrayList<Category>>(){}.getType();
	 ArrayList<Category>al = gson.fromJson(jsonArray, listType);
	 HashMap<String,String> hm = new HashMap<String,String>();
	 response.setContentType("application/json");
     String jsonData = "";
	 if(CategoryDAO.saveInBulk(al)){
		 response.setStatus(HttpServletResponse.SC_OK);
		 hm.put("message","All category saved");
		 jsonData = gson.toJson(hm);
	}
	 else{
	   response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	   hm.put("error","Internal Server Error");
	   jsonData = gson.toJson(hm);
	 }
	 response.getWriter().write(jsonData);
	 
	}
	catch(Exception e){
		e.printStackTrace();
	}
  }
  else
	  out.print("Bad request...");
%>