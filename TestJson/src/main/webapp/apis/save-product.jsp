<%@page import="java.lang.reflect.Type"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.google.gson.reflect.TypeToken"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonArray"%>
<%
Gson gson = new Gson();
JsonArray jsonArray = gson.fromJson(request.getReader(), JsonArray.class);

Type listType =  new TypeToken<ArrayList<Product>>(){}.getType();

ArrayList<Product> list = gson.fromJson(jsonArray, listType);

%>