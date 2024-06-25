<%@page import="model.User"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">E-shop</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">Home</a>
    </li>
    <%if(User.isLoggedIn(session)==false){ %>
    <li class="nav-item">
      <a class="nav-link" href="sign-in.jsp">Sign In</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="sign-up.jsp">Sign UP</a>
    </li>
    <%}else{%>
    <li class="nav-item">
      <a class="nav-link" href="#">Products</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Categories
      </a>
      <div class="dropdown-menu">
       <% 
         ArrayList<Category> categoryList = CategoryDAO.getCategoryList();
         for(Category c: categoryList){
       %>
        <a class="dropdown-item" href="#"><%=c.getName()%></a>
       <%}%>
      </div>
    </li>
    <li class="nav-item">
      <form method="post" action="logout.jsp">
       <button class="btn btn-danger nav-link">Logout</button>
      </form>
    </li>
    <%}%>
  </ul>
</nav>