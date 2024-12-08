<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>pc</title>
 <link rel="stylesheet" href="CSS/HomeNew.css" />
<link rel="stylesheet" href="CSS/insertnewfile.css" />
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
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String nic = request.getParameter("nic");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
%>
    <div class="fom_add">
      <div>
 <h1 class="hscen">Update<span> Details..</span></h1>


<form class="frm_dt" action="adminupdate" method="post">
          <div class="uplode-card">
            <div class="details-container">
            <label class="lable-uplode" for="id">ID</label><br />
              <input
                class="uplode-input"
                type="text"
                id="id"
                name="id"
                 value="<%=id%>"
                readonly
              /><br />
              <label class="lable-uplode" for="name">Member Name</label><br />
              <input
                class="uplode-input"
                type="text"
                id="name"
                name="name"
                value="<%=name%>"
                required
              /><br />

              <label class="lable-uplode" for="nic">NIC</label><br />
              <input class="uplode-input" type="text" id="nic" name="nic" value="<%=nic%>" required /><br />

              <label class="lable-uplode" for="phone">Phone Number</label
              ><br />
              <input
                class="uplode-input"
                type="text"
                id="phone"
                name="phone"
                 pattern="[0-9]{10}"
                value="<%=phone%>"
                required
              /><br />
              <label class="lable-uplode" for="address">Address</label><br />
              <input
                class="uplode-input"
                type="text"
                id="address"
                name="address"
                value="<%=address%>"
                required
              /><br />
              <br />
            </div>
            <div class="button-form">
              <button class="uplode">update</button>
            </div>
          </div>
        </form>
      </div>
      </div>
      
    <footer class="footer">
      <div class="footer-content">
        &copy; 2024 All rights reserved.
      </div>
    </footer>
</body>
</html>