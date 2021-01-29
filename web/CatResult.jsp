<%-- 
    Document   : CatResult
    Created on : Jan 28, 2021, 11:37:10 AM
    Author     : tania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="css.css" />
    </head>
    <body>
        <h1>You have selected the following category!</h1>
        <% String cat = request.getParameter("cat"); %>
        <%= cat %> <br>
          <a href="index.html"> Back</a>
    </body>
</html>
