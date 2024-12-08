<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>pc</title>
     <link rel="stylesheet" href="CSS/HomeNew.css" />
    <link rel="stylesheet" href="CSS/insertnewfile.css" />
    <script>
        function calculateTotal() {
            var price = parseFloat(document.getElementById('price').value);
            var qty = parseInt(document.getElementById('qty').value);
            var total = price * qty;
            if (!isNaN(total)) {
                document.getElementById('total').value = total.toFixed(2); // Display total with two decimal places
            }
        }
    </script>
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
       
        <div >
            <h1  class="hscen">Add New Item Cart</h1>
            
            <form class="frm_dt" action="CustomerInsert" method="post" oninput="calculateTotal()">
               <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" value="<%= request.getParameter("name") %>" required />
                </div>

                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="text" id="price" name="price" value="<%= request.getParameter("price") %>" required />
                </div>

                <div class="form-group">
                    <label for="qty">Quantity</label>
                    <input type="text" id="qty" name="qty" required />
                </div>

                <div class="form-group">
                    <label for="total">Total</label>
                    <input type="text" id="total" name="total" readonly />
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
