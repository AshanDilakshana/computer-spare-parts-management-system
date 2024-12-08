<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>pc</title>
    
    <link rel="stylesheet" href="CSS/HomeNew.css" />
    <link rel="stylesheet" href="CSS/insertnewfile.css" />
      <link rel="stylesheet" href="CSS/newinput.css" />

  </head>
  <body>

  <%
    String id = request.getParameter("id");
   String  ptype= request.getParameter("ptype");
   
	String type = request.getParameter("type");  
	String vendor = request.getParameter("name");
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
    <br><br><br><br>
   <div class="fom_add">
      <div>
    <h1 class="hscen">Update Product details</h1>
         
        <form  class="frm_dt" action="update" method="post">

         
             <label >Product ID</label>
            <input type="text" id="id" name="id" readonly  value="<%= id %>"  /><br><br>
          
            <label for="ptype">Spare Item Type</label>
<select id="ptype" name="ptype">
    <option value="" disabled>Select a spare Item type</option>
    <option value="CPU" <% if ("CPU".equals(ptype)) { %> selected <% } %>>CPU</option>
    <option value="RAM" <% if ("RAM".equals(ptype)) { %> selected <% } %>>RAM</option>
    <option value="GPU" <% if ("GPU".equals(ptype)) { %> selected <% } %>>GPU</option>
    <option value="Motherboard" <% if ("Motherboard".equals(ptype)) { %> selected <% } %>>Motherboard</option>
    <option value="Hard Drive" <% if ("Hard Drive".equals(ptype)) { %> selected <% } %>>Hard Drive</option>
    <option value="SSD" <% if ("SSD".equals(ptype)) { %> selected <% } %>>SSD</option>
    <option value="Power Supply" <% if ("Power Supply".equals(ptype)) { %> selected <% } %>>Power Supply</option>
    <option value="Cooling Fan" <% if ("Cooling Fan".equals(ptype)) { %> selected <% } %>>Cooling Fan</option>
    <!-- Add more spare part types as needed -->
</select><br><br>

<label for="type">Type</label>
<select id="type" name="type">
    <option value="" disabled>Select a type</option>
    <option value="Desktop" <% if ("Desktop".equals(type)) { %> selected <% } %>>Desktop</option>
    <option value="Laptop" <% if ("Laptop".equals(type)) { %> selected <% } %>>Laptop</option>
    <option value="Tablet" <% if ("Tablet".equals(type)) { %> selected <% } %>>Tablet</option>
    <option value="Smartphone" <% if ("Smartphone".equals(type)) { %> selected <% } %>>Smartphone</option>
    <option value="Server" <% if ("Server".equals(type)) { %> selected <% } %>>Server</option>
    <!-- Add more types as needed -->
</select><br><br>
            
            
               
            
               <label >Supplier Name</label>
            <input type="text" id="vendor" name="vendor"  value="<%= vendor %>" /><br><br>
            
            <label >contact</label>
            <input type="text" id="contact" name="contact"  value="<%= contact %>" /><br><br>
       
            <label >Quantity</label>
            <input type="text" id="capacity" name="capacity"  value="<%= capacity %>" /><br><br>
            
            <label >Price</label>
            <input type="text" id="budget" name="budget"  value="<%= budget %>" /><br><br>
            
             <label >Info</label>
            <input type="text" id="info" name="info"  value="<%= info %>" /><br><br>
          
          
          
          <button class="uplode"  type="submit">Update</button>
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
