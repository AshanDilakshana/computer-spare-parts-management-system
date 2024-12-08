<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
     <title>pc</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="CSS/datadetail.css" />
  <link rel="stylesheet" href="CSS/HomeNew.css" /> <!-- Add your CSS file here -->
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
    <div class="tablefuil">
    <h1 class="hscen">All Inventory Item</h1>
    <table border="1">
        <thead>
            <tr>
                <th>User ID</th>
                <th>Name</th>
                <th>URL</th>
                <th>Spare Part Type</th>
                <th>Available</th>
                <th>Price</th>
                <th>Type</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${userList}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td><img src="${user.url}" alt="User Image" style="width: 100px; height: auto;" /></td>
                    <td>${user.ptype}</td>
                    <td>${user.type}</td>
                    <td>${user.available}</td>
                    <td>${user.price}</td>
                    <td>
                        <form action=" http://localhost:8090/Inventory/Update.jsp" method="post">
                            <input type="hidden" name="id" value="${user.id}" />
                            <input type="hidden" name="name" value="${user.name}" />
                            <input type="hidden" name="url" value="${user.url}" />
                            <input type="hidden" name="ptype" value="${user.ptype}" />
                            <input type="hidden" name="type" value="${user.type}" />
                            <input type="hidden" name="available" value="${user.available}" />
                            <input type="hidden" name="price" value="${user.price}" />
                            <button class="nebtn" type="submit">Update</button>
                        </form>
 <form action="http://localhost:8090/Inventory/Delete.jsp" method="post">
                            <input type="hidden" name="id" value="${user.id}" />
                            <input type="hidden" name="name" value="${user.name}" />
                            <input type="hidden" name="url" value="${user.url}" />
                            <input type="hidden" name="ptype" value="${user.ptype}" />
                            <input type="hidden" name="type" value="${user.type}" />
                            <input type="hidden" name="available" value="${user.available}" />
                            <input type="hidden" name="price" value="${user.price}" />
                            <button class="nebtn" type="submit">Delete</button>
                        </form>
 
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
</body>
</html>
