<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
 <h1 class="hscen">Member Details Table</h1>
    <div class="memb">
      <form class="fm_dets" action="adminsearch" method="post">
        <input type="text" required name="uid" placeholder="User Name..." />
        <input type="text" required name="pass" placeholder="User NIC..." />
        <button class="nebtn lf">Search</button>
      </form>
    </div>

    <div class="tablefuil">
      <div class="pksen">
        <a href="AdminInsert.jsp">
          <button class="nebtn">Add New Member</button>
        </a>
      </div>
      <table id="customers">
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>NIC</th>
          <th>Phone</th>
          <th>Address</th>
        </tr>
        <c:forEach var="adm" items="${allAdmins}">
          <tr>
            <td>${adm.id}</td>
            <td>${adm.name}</td>
            <td>${adm.nic}</td>
            <td>${adm.phone}</td>
            <td>${adm.address}</td>
          </tr>
        </c:forEach>
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
