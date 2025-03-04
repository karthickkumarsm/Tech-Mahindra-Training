<%--
  Created by IntelliJ IDEA.
  User: Madhan Kumar
  Date: 21-02-2025
  Time: 12:35 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>JSP Page!</title>
</head>
<body>
<%!
  public static int accesses = 0;
%>
<h1>JSP Example (jspcount.jsp)</h1>
<%
  accesses++;
  out.print("<p>Number of times this JSP has been accessed:" + accesses + "</p>");
%>
</body>
</html>

