<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>pc</title>
      <link rel="stylesheet" href="CSS/datadetail.css" />
  <link rel="stylesheet" href="CSS/HomeNew.css" />
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
     </div>
    <h1 class="hscen">Check All Product Details</h1>
     <div class="tablefuil">
      <div class="pksen">
        <a href="Insert.jsp">
          <button class="nebtn">Add New Product</button>
        </a>
      </div>
    <table>
        <thead>
            <tr>
                <th>User ID</th>
                <th>Package Type</th>
                <th>Type</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Capacity</th>
                <th>Budget</th>
                <th>Info</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="admin" items="${allAdmins}">
                <tr>
                    <td>${admin.id}</td>
                    <td>${admin.ptype}</td>
                    <td>${admin.type}</td>
                    <td>${admin.name}</td>
                    <td>${admin.contact}</td>
                    <td>${admin.capacity}</td>
                    <td>${admin.budget}</td>
                    <td>${admin.info}</td>
                    <td>
    <a href="http://localhost:8090/Supplier/Delete.jsp?id=${admin.id}&ptype=${admin.ptype}&type=${admin.type}&name=${admin.name}&contact=${admin.contact}&capacity=${admin.capacity}&budget=${admin.budget}&info=${admin.info}">
        <button  class="nebtn">Delete</button>
    </a>
    <a href="http://localhost:8090/Supplier/Update.jsp?id=${admin.id}&ptype=${admin.ptype}&type=${admin.type}&name=${admin.name}&contact=${admin.contact}&capacity=${admin.capacity}&budget=${admin.budget}&info=${admin.info}">
        <button  class="nebtn">Update</button>
    </a> 
</td>
                    
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
    
       <br>  <br>  <br>
    <footer class="footer">
      <div class="footer-content">
        &copy; 2024 All rights reserved.
      </div>
    </footer>
    
</body>
</html>
