<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.user.User, com.user.UserDBUtil" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Details</title>
    <link rel="stylesheet" href="CSS/cardcart.css" /> <!-- Add your CSS file here -->
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
        <p><a href="http://localhost:8090/Inventory/HomeUser.jsp">user</a></p>
      </div>
      <div class="profile">
        <a href="http://localhost:8090/User/Login.jsp">
          <img src="CSS/userr.png" alt="user icon" class="iconu" />
        </a>
      </div>
      
    </div>
    <br>
    <h1 class="hscen">My Cart</h1>
    <div>
      <div class="itm_list">
        <c:set var="total" value="0" /> <!-- Initialize total to 0 -->
        <c:forEach var="user" items="${userList}">
          <div class="itmcrd">
            <div class="dino">Cart Item ID : ${user.id}</div>
            <div class="nmitm">${user.name}</div>
            <div class="onp">One Item Price : {user.price}</div>
            <div class="ttttt">
              <div>${user.qty}</div>
              <div>Rs.${user.total}.00</div>
            </div>
            <div class="btnset">
              <form action="Update.jsp" method="post">
                <input type="hidden" name="id" value="${user.id}" />
                <input type="hidden" name="name" value="${user.name}" />
                <input type="hidden" name="price" value="${user.price}" />
                <input type="hidden" name="qty" value="${user.qty}" />
                <input type="hidden" name="total" value="${user.total}" />
                <button class="shopnwbtn" type="submit">Update</button>
              </form>
              <form action="Delete.jsp" method="post">
                <input type="hidden" name="id" value="${user.id}" />
                <input type="hidden" name="name" value="${user.name}" />
                <input type="hidden" name="price" value="${user.price}" />
                <input type="hidden" name="qty" value="${user.qty}" />
                <input type="hidden" name="total" value="${user.total}" />
                <button class="shopnwbtn" type="submit">Delete</button>
              </form>
            </div>
          </div>
          <c:set var="total" value="${total + user.total}" /> <!-- Update total -->
        </c:forEach>
        <br>
          <h1 class="hscen">Total = Rs.${total}.00</h1> <!-- Display total -->
      </div>
    
    </div>
    <footer class="footer">
      <div class="footer-content">&copy; 2024 All rights reserved.</div>
    </footer>
</body>
</html>
