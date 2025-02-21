package org.example.jsp_first_test;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Handle GET request (e.g., when clicking the link in the JSP)
        response.setContentType("text/html");
        String color = request.getParameter("color"); // Try to get the color parameter if provided
        if (color != null && !color.isEmpty()) {
            response.getWriter().write("<h1>You entered (via GET): " + color + "</h1>");
        } else {
            response.getWriter().write("<h1>No color provided. Use the form to submit a color.</h1>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Handle POST request (e.g., from a form submission)
        response.setContentType("text/html");
        String color = request.getParameter("color");
        if (color != null && !color.isEmpty()) {
            response.getWriter().write("<h1>You entered (via POST): " + color + "</h1>");
        } else {
            response.getWriter().write("<h1>No color provided.</h1>");
        }
    }
}