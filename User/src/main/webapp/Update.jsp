<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>pc</title>
     <link rel="stylesheet" href="CSS/HomeNew.css" />
    <link rel="stylesheet" href="CSS/insertnewfile.css" />
    <script>
        function calculateTotal() {
            var price = parseFloat(document.getElementById('price').value);
            var qty = parseInt(document.getElementById('qty').value);
            var total = price * qty;
            if (!isNaN(total)) {
                document.getElementById('total').value = total.toFixed(2);
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
            <h1  class="hscen">Update Item</h1>
            <form class="frm_dt"  action="UpdateCustomerServlet" method="post">
                <div class="form-group">
                    <label for="id">Cart Item ID</label>
                    <input type="text" id="id" name="id" value="<%= request.getParameter("id") %>" readonly />
                </div>
                <div class="form-group">
                    <label for="name">Item Name</label>
                    <input type="text" id="name" name="name" value="<%= request.getParameter("name") %>" required />
                </div>
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="text" id="price" name="price" value="<%= request.getParameter("price") %>" required oninput="calculateTotal()" />
                </div>
                <div class="form-group">
                    <label for="qty">Quantity</label>
                    <input type="text" id="qty" name="qty" value="<%= request.getParameter("qty") %>" required oninput="calculateTotal()" />
                </div>
                <div class="form-group">
                    <label for="total">Total</label>
                    <input type="text" id="total" name="total" value="<%= request.getParameter("total") %>" readonly />
                </div>
                <button class="uplode" type="submit">UPDATE</button>
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
