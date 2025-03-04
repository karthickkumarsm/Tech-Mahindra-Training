package com.learning.springboot.demo.demo;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
public class OnServletContext extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter pw = res.getWriter();
        res.setContentType("text/html");

        ServletContext context = getServletContext();

        String s1 = context.getInitParameter("p1");
        String s2 = context.getInitParameter("p2");

        pw.println("p1 value is " + s1 + " and p2 is " + s2);

        pw.close();
    }
}
