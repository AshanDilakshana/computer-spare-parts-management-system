<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <title>pc</title>
       <link rel="stylesheet" href="CSS/HomeNew.css" />
    <link rel="stylesheet" href="CSS/insertnewfile.css" />
      <link rel="stylesheet" href="CSS/newinput.css" />
     
      <link rel="stylesheet" href="CSS/mainhm.css" />
  </head>
  <body>
     <div class="navbar">
      <div class="logo">
        <img src="CSS/log.png" alt="logo" class="iconu" />
      </div>
           <div class="menu">
        <p><a href="http://localhost:8090/AdminDemo/Home.jsp">Home</a></p>

        <p>
          <a href="http://localhost:8090/AdminDemo/AdminLogin.jsp">Admin</a>
        </p>
        <p>
          <a href="http://localhost:8090/Supplier/Home.jsp">Supply</a>
        </p>
        <p><a href="http://localhost:8090/Inventory/Home.jsp">Inventory</a></p>
        <p><a href="http://localhost:8090/User/UserMainHome.jsp">user</a></p>
      </div>
      <div class="profile">
        <a href="http://localhost:8090/User/Login.jsp">
          <img src="CSS/userr.png" alt="user icon" class="iconu" />
        </a>
      </div>
    </div>
    <div class="box_set">
  <form  class="boximg" action="viewAll" method="post">
 <img src="CSS/crt.jpg" alt="imgadd" class="img_one" />
<button class="nebtn">View  My Card</button>

</form>
  <div class="boximg">
  <img src="CSS/shop.jpeg" alt="imgadd" class="img_one" />
  <a href="http://localhost:8090/User/UserMainHome.jsp"> <button class="nebtn">Add New Item </button></a>
       </div>
    </div>

    <footer class="footer">
      <div class="footer-content">&copy; 2024 All rights reserved.</div>
    </footer>
  </body>
</html>

