<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
      <div class="profile">
        <a href="http://localhost:8090/User/Login.jsp">
          <img src="CSS/userr.png" alt="user icon" class="iconu" />
        </a>
      </div>
    </div>
    
    
    <div class="fom_add">
      
        <div>
            <h1 class="hscen">Enter new  details...</h1>
            
            <form class="frm_dt"  action="CustomerInsert" method="post">
                <div class="form-group">
                    <label for="name">Item Name</label>
                    <input type="text" id="name" name="name" required />
                </div>
                
                <div class="form-group">
                    <label for="url">URL</label>
                    <input type="text" id="url" name="url" required />
                </div>
                
<label for="ptype">Spare Part Type</label> <br />
<select id="ptype" name="ptype" required>
    <option value="" disabled selected>Select a spare part type</option>
    <option value="CPU">CPU</option>
    <option value="RAM">RAM</option>
    <option value="GPU">GPU</option>
    <option value="Motherboard">Motherboard</option>
    <option value="Hard Drive">Hard Drive</option>
    <option value="SSD">SSD</option>
    <option value="Power Supply">Power Supply</option>
    <option value="Cooling Fan">Cooling Fan</option>
    <!-- Add more spare part types as needed -->
</select><br /><br />


    <label for="type">Type</label> <br />
<select id="type" name="type" required>
    <option value="" disabled selected>Select a type</option>
    <option value="Desktop">Desktop</option>
    <option value="Laptop">Laptop</option>
    <option value="Tablet">Tablet</option>
    <option value="Smartphone">Smartphone</option>
    <option value="Server">Server</option>
    <!-- Add more types as needed -->
</select><br /><br />

               <div class="form-group">
    <label for="available">Available</label>
    <select id="available" name="available" required>
        <option value="" disabled selected>Select availability</option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
    </select>
</div>


                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="text" id="price" name="price" required />
                </div>

                <button class="uplode" type="submit">Add</button>
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
