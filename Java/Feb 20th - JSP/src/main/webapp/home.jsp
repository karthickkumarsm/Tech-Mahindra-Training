<%--
  Created by IntelliJ IDEA.
  User: Madhan Kumar
  Date: 21-02-2025
  Time: 11:43 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>My First JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
    </style>
</head>
<body>
<form action="HelloServlet" method="POST">
    <label>Please enter a color:</label><br>
    <input type="text" name="color" size="20" maxlength="20" required>
    <br>
    <input type="submit" value="Submit">
</form>
</body>
</html>