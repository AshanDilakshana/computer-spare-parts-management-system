package com.user;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsert")
public class InsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String qty = request.getParameter("qty");
        String total = request.getParameter("total");

        boolean isSuccess;

        isSuccess = UserDBUtil.insertCustomer(name, price, qty, total);

        if (isSuccess) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccess.jsp");
            dispatcher2.forward(request, response);
        }
    }
}
