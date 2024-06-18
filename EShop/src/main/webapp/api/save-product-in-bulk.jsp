<%@page import="java.util.HashMap"%>
<%@page import="dao.ProductDAO"%>
<%@page import="java.lang.reflect.Type"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.google.gson.reflect.TypeToken"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.Gson"%>
<%
   if(request.getMethod().equals("POST")){
	   Gson gson = new Gson();
	   try{
		 JsonArray jsonArray = gson.fromJson(request.getReader(), JsonArray.class);  
	     Type listType =  new TypeToken<ArrayList<Product>>(){}.getType();
	     ArrayList<Product>al = gson.fromJson(jsonArray, listType);
	     HashMap<String,String> hm = new HashMap<String,String>();
	     if(ProductDAO.saveInBulk(al)){
	    	 hm.put("message","Data saved");
	    	 String jsonString = gson.toJson(hm);
	    	 response.setStatus(HttpServletResponse.SC_CREATED);
	    	 response.getWriter().write(jsonString);
	     }
	     else{
	    	 hm.put("error","Internal Server Error");
	    	 String jsonString = gson.toJson(hm);
	    	 response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	    	 response.getWriter().write(jsonString);
	     	 
	     }
	   }
	   catch(Exception e){
		   e.printStackTrace();
	   }
   }
   else
	   out.print("Bad request..."); 
%>