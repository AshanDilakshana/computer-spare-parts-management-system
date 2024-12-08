package com.supplier;

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

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	String id = request.getParameter("id");
        String  ptype= request.getParameter("ptype");
    	String type = request.getParameter("type");  
    	String vendor = request.getParameter("vendor");
    	String contact = request.getParameter("contact");
    	String capacity = request.getParameter("capacity");
    	String budget= request.getParameter("budget");
    	String info= request.getParameter("info");


        boolean isTrue;

        isTrue = UserDBUtil.updateCustomer(Integer.parseInt(id), ptype, type, vendor, contact, Integer.parseInt(capacity), Integer.parseInt(budget), info);


        if (isTrue) {
            List<User> cusDetails = UserDBUtil.getCustomerDetails(Integer.parseInt(id));
            request.setAttribute("cusDetails", cusDetails);

            RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
            dis.forward(request, response);
        } else {
            List<User> cusDetails = UserDBUtil.getCustomerDetails(Integer.parseInt(id));
            request.setAttribute("cusDetails", cusDetails);

            RequestDispatcher dis = request.getRequestDispatcher("Insert.jsp");
            dis.forward(request, response);
        }
    }
}
