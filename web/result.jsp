<%-- 
    Document   : result
    Created on : Jan 28, 2021, 11:50:21 AM
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
        <%
         
        %>
        <p>This jsp is IN THE PATH of the request, therefore can see (a) The parameters of the user:</p>
        <p> Name: <%= request.getParameter("name")%>  Age:  <%=request.getParameter("age")%></p>
        <p> (b) The attributes of the request scope:</p>
        <p>city: <%=request.getAttribute("city")%>  </p>
        <p> (c) The attributes of the session scope:</p>
        <p>username: <%=session.getAttribute("username")%>  </p>      
             <p> (b) The attributes of the application scope:</p>
        <p>appname: <%= application.getAttribute("appname")%>  </p>     
        <p> And I can also get the parameter I put in the web.xml = context-param:</p>
        <p>Company name: <%= application.getInitParameter("companyname")%></p>
        
        <a href="outsidepath.jsp"> Click here to go to a jsp that is outside the path of the request (I am not forwarding the request...)</a>
    </body>
</html>
