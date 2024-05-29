
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact us</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="#">Add user</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="user-list.jsp">View user</a>
      </li> 
      <li class="nav-item">
         <form method="POST" action="controller/signout-controller.jsp">
           <button type="submit" class="btn btn-outline-danger mt-1 ml-1">Sign out</button>
         </form>
      </li> 
    </ul>
  </div>  
</nav>