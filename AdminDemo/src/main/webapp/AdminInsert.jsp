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
    <div class="fom_add">
      <div>
        <h1 class="hscen">Fill in the Form.</h1>

        <form class="frm_dt" action="admininser" method="post">
          <div class="uplode-card">
            <div class="details-container">
              <label class="lable-uplode" for="name">Member Name</label><br />
              <input
                class="uplode-input"
                type="text"
                id="name"
                name="name"
                required
              /><br />

              <label class="lable-uplode" for="date">NIC</label><br />
              <input
                class="uplode-input"
                type="text"
                id="nic"
                name="nic"
                required
              /><br />

              <label class="lable-uplode" for="description">Phone Number</label
              ><br />
              <input
                pattern="[0-9]{10}"
                class="uplode-input"
                type="text"
                id="phone"
                name="phone"
                required
              /><br />
              <label class="lable-uplode" for="date">Address</label><br />
              <input
                class="uplode-input"
                type="text"
                id="address"
                name="address"
                required
              /><br />
              <br />
            </div>
            <div class="button-form">
              <button class="uplode">Add Member</button>
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
