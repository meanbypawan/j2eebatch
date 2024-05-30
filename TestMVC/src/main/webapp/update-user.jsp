<%@page import="model.User"%>
<%@page import="dao.UserDAO"%>
<%@page import="dao.CityDAO"%>
<%@page import="model.City"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="model.User"></jsp:useBean>
<jsp:setProperty name="user" property="id"></jsp:setProperty>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="_bootstrap.jsp" %>
</head>
<body>
  <%@include file="_header.jsp" %>
  <% 
     User u = UserDAO.getUser(user.getId());
  %>
  <div class="container mt-5">
    <form method="POST" action="controller/update-user.jsp">
      <input type="hidden" name="id" value="<%=user.getId()%>"/>
      <div class="form-group">
       <label>Update city ?</label>
        <select class="form-control" name="cityId">
          <% 
            ArrayList<City> cityList = CityDAO.getCityList();
            for(City c: cityList){
               if(c.getId() == u.getCityId()){
               %>
            	<option value="<%=c.getId() %>" selected><%=c.getCityName() %></option>
            <%}else{%>
            	<option value="<%=c.getId() %>"><%=c.getCityName() %></option>
            <%}
            }
          %>
        </select>
      </div>
      <div class=form-group>
        <label>Username</label>
        <input name="username" value="<%=u.getUsername()%>" type="text" class="form-control"/>
      </div>
      <div class=form-group>
        <label>Email</label>
        <input name="email" type="email" value="<%=u.getEmail() %>" class="form-control"/>
      </div>
      <div class=form-group>
        <label>Age</label>
        <input name="age" value="<%=u.getAge() %>" type="text" class="form-control"/>
      </div>
      <div class=form-group>
        <button type="submit" class="btn btn-secondary">Update</button>
      </div>
    </form>
  </div>
</body>
</html>