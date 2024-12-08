<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>PC</title>
      <link rel="stylesheet" href="CSS/insertnewfile.css" />
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

      <div class="profile">
        <a href="http://localhost:8090/User/Login.jsp">
          <img src="CSS/userr.png" alt="user icon" class="iconu" />
        </a>
      </div>
    </div>
  
    <c:forEach var="adm" items="${admDetails}">
      <c:set var="id" value="${adm.id}"/>
      <c:set var="name" value="${adm.name}"/>
      <c:set var="nic" value="${adm.nic}"/>
      <c:set var="phone" value="${adm.phone}"/>
      <c:set var="address" value="${adm.address}"/>
       <div class="fom_add">
      <div>
     <h1 class="hscen">Member<span> Details..</span></h1>
           <div class="frm_dt" >
             <label class="lable-uplode" for="name">Member ID</label><br />
             <input class="uplode-input" value="${adm.id}" readonly /><br /><br />

             <label class="lable-uplode">Member Name</label><br />
             <input class="uplode-input" value="${adm.name}" readonly/><br /><br />
             
             <label class="lable-uplode" for="description">Member NIC</label><br/>
             <input class="uplode-input" value="${adm.nic}" readonly /><br /><br />

             <label class="lable-uplode">Member Mobile</label><br />
             <input class="uplode-input" value="${adm.phone}" readonly/><br /><br />

             <label class="lable-uplode">Member Address</label><br />
             <input class="uplode-input" value="${adm.address}" readonly/><br /><br />

             <br />
             
      
          </c:forEach>
          
          <c:url value="UpdateAdmin.jsp" var="admupdate">
          
            <c:param name="id" value="${id}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="nic" value="${nic}"/>
            <c:param name="phone" value="${phone}"/>
            <c:param name="address" value="${address}"/>
          
          </c:url>
          
      
          <c:url value="DeleteAdmin.jsp" var="admdelete">
          
            <c:param name="id" value="${id}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="nic" value="${nic}"/>
            <c:param name="phone" value="${phone}"/>
            <c:param name="address" value="${address}"/>
          
          </c:url>
          
          <div class="button-form">
          
            <a href="${admupdate}">
              <button class="uplode">Update</button>
            </a>
      <br><br>
            <a href="${admdelete}">
              <button class="uplode dlt">Delete</button>
            </a>
         </div>
         </div>
         </div>
         </div>
 
      <br /><br /><br />
    <footer class="footer">
      <div class="footer-content">
        &copy; 2024 All rights reserved.
      </div>
    </footer>
  </body>
</html>
