package com.learning.springboot.demo.demo;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

public class First extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String user = request.getParameter("user");
        out.println("<form action='Second'>");
        out.println("<input type='hidden' name='user' value='" + user + "'>");
        out.println("<input type='submit' value='Submit'>");
        out.println("</form>");
    }
}
