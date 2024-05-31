<%@page import="java.util.HashMap"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.UserDAO"%>
<%
if(request.getMethod().equals("GET")){
  ArrayList<User> al =  UserDAO.getUserList();
  Gson gson = new Gson();
  //String jsonData = gson.toJson(al);
  
  HashMap<String,ArrayList<User>> hm = new HashMap<String,ArrayList<User>>();
  hm.put("data",al);
  String jsonData = gson.toJson(hm);
  response.setContentType("application/json");
  response.setStatus(HttpServletResponse.SC_OK);
  response.getWriter().write(jsonData);
}
%>