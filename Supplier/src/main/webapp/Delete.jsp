 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete</title>
	  <link rel="stylesheet" href="CSS/HomeNew.css" />
    <link rel="stylesheet" href="CSS/insertnewfile.css" />
      <link rel="stylesheet" href="CSS/newinput.css" />
</head>
<body>
    

	<%
    String id = request.getParameter("id");
    String  ptype= request.getParameter("ptype");
	String type = request.getParameter("type");  
	String name = request.getParameter("name");
	String contact = request.getParameter("contact");
	String capacity = request.getParameter("capacity");
	String budget= request.getParameter("budget");
	String info= request.getParameter("info");
%>
 
 
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
         <br><br><br> <br><br><br>
  
      <div class="fom_add">
        <div >
          <h1 class="hscen">Delete Confirmation</h1>
        <form  class="frm_dt" action="delete" method="post">
         
             <label >Customer ID</label>
            <input type="text" id="id" name="id" readonly  value="<%= id %>"  /><br><br>
          
            <label for="username">Package Type</label>
            <input type="text" id="ptype" name="ptype" readonly  value="<%= ptype %>"  /><br><br>
            
             <label >Type</label>
            <input type="text" id="type" name="type" readonly value="<%= type %>" /><br><br>
            
               
            
               <label >Customer name</label>
            <input type="text" id="name" name="name" readonly value="<%= name %>" /><br><br>
            
            <label >contact</label>
            <input type="text" id="contact" name="contact" readonly value="<%= contact %>" /><br><br>
       
            <label >capacity</label>
            <input type="text" id="capacity" name="capacity" readonly value="<%= capacity %>" /><br><br>
            
            <label >Buget</label>
            <input type="text" id="budget" name="budget" readonly value="<%= budget %>" /><br><br>
            
             <label >Info</label>
            <input type="text" id="info" name="info" readonly value="<%= info %>" /><br><br>
          

          <button type="submit" class="uplode">Delete</button>
        </form>
        </div>
         </div>
         <br><br><br>    <br><br><br>
        <footer class="footer">
      <div class="footer-content">
        &copy; 2024 All rights reserved.
      </div>
    </footer>
</body>
</html>