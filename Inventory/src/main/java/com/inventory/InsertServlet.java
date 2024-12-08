package com.inventory;

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
        String url = request.getParameter("url");
        String ptype = request.getParameter("ptype");
        String type = request.getParameter("type");
        String available = request.getParameter("available");
        String price = request.getParameter("price");

        boolean isSuccess;

        isSuccess = UserDBUtil.insertcustomer(name, url, ptype, type, available, price);

        if (isSuccess) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccess.jsp");
            dispatcher2.forward(request, response);
        }
    }
}
