package com.inventory;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerServlet")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String url = request.getParameter("url");
        String ptype = request.getParameter("ptype");
        String type = request.getParameter("type");
        String available = request.getParameter("available");
        String price = request.getParameter("price");

        boolean isSuccess;

        isSuccess = UserDBUtil.updatecustomer(id, name, url, ptype, type, available, price);

        if (isSuccess) {
            List<User> cusDetails = UserDBUtil.getCustomerDetails(id);
            request.setAttribute("cusDetails", cusDetails);

            RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
            dispatcher.forward(request, response);
        } else {
            List<User> cusDetails = UserDBUtil.getCustomerDetails(id);
            request.setAttribute("cusDetails", cusDetails);

            RequestDispatcher dispatcher = request.getRequestDispatcher("Display.jsp");
            dispatcher.forward(request, response);
        }
    }
}
