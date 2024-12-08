<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pc</title>
    <link rel="stylesheet" href="CSS/HomeNew.css" />
        <link rel="stylesheet" href="CSS/newfromcss.css" />
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
      </div>
      <div class="profile">
        <a href="http://localhost:8090/User/Login.jsp">
          <img src="CSS/userr.png" alt="user icon" class="iconu" />
        </a>
      </div>
    </div>
    <div class="fom_add">
       
        <div >
            <h1 class="hscen">Update Item..</h1>
            <form class="frm_dt" action="UpdateCustomerServlet" method="post">
                <div class="form-group">
                    <label for="id">User ID</label>
                    <input type="text" id="id" name="id" value="<%= request.getParameter("id") %>" readonly />
                </div>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" value="<%= request.getParameter("name") %>" required />
                </div>
                <div class="form-group">
                    <label for="url">URL</label>
                    <input type="text" id="url" name="url" value="<%= request.getParameter("url") %>" required />
                </div>
                <div class="form-group">
                    <label for="ptype">Spare Part Type</label>
                    <select id="ptype" name="ptype" required>
                        <option value="" disabled>Select a spare part type</option>
                        <option value="CPU" <%= "CPU".equals(request.getParameter("ptype")) ? "selected" : "" %>>CPU</option>
                        <option value="RAM" <%= "RAM".equals(request.getParameter("ptype")) ? "selected" : "" %>>RAM</option>
                        <option value="GPU" <%= "GPU".equals(request.getParameter("ptype")) ? "selected" : "" %>>GPU</option>
                        <option value="Motherboard" <%= "Motherboard".equals(request.getParameter("ptype")) ? "selected" : "" %>>Motherboard</option>
                        <option value="Hard Drive" <%= "Hard Drive".equals(request.getParameter("ptype")) ? "selected" : "" %>>Hard Drive</option>
                        <option value="SSD" <%= "SSD".equals(request.getParameter("ptype")) ? "selected" : "" %>>SSD</option>
                        <option value="Power Supply" <%= "Power Supply".equals(request.getParameter("ptype")) ? "selected" : "" %>>Power Supply</option>
                        <option value="Cooling Fan" <%= "Cooling Fan".equals(request.getParameter("ptype")) ? "selected" : "" %>>Cooling Fan</option>
                        <!-- Add more spare part types as needed -->
                    </select>
                </div>
                <div class="form-group">
                    <label for="type">Type</label>
                    <select id="type" name="type" required>
                        <option value="" disabled>Select a type</option>
                        <option value="Desktop" <%= "Desktop".equals(request.getParameter("type")) ? "selected" : "" %>>Desktop</option>
                        <option value="Laptop" <%= "Laptop".equals(request.getParameter("type")) ? "selected" : "" %>>Laptop</option>
                        <option value="Tablet" <%= "Tablet".equals(request.getParameter("type")) ? "selected" : "" %>>Tablet</option>
                        <option value="Smartphone" <%= "Smartphone".equals(request.getParameter("type")) ? "selected" : "" %>>Smartphone</option>
                        <option value="Server" <%= "Server".equals(request.getParameter("type")) ? "selected" : "" %>>Server</option>
                        <!-- Add more types as needed -->
                    </select>
                </div>
                <div class="form-group">
                    <label for="available">Available</label>
                    <select id="available" name="available" required>
                        <option value="" disabled>Select availability</option>
                        <option value="Yes" <%= "Yes".equals(request.getParameter("available")) ? "selected" : "" %>>Yes</option>
                        <option value="No" <%= "No".equals(request.getParameter("available")) ? "selected" : "" %>>No</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="text" id="price" name="price" value="<%= request.getParameter("price") %>" required />
                </div>
            
                <button class="uplode"  type="submit">Update</button>
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
