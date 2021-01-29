<%-- 
    Document   : table2
    Created on : Jan 29, 2021, 12:43:53 AM
    Author     : tania
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <link rel="stylesheet" href="css.css" />
    </head>
    <body>
            <% List<Student> students = (List<Student>) request.getAttribute("Students");%>
            <table>
            <tr>
                <th> First Name</th>
                <th> Last  Name</th>
                <th> Date of Birth</th>
            </tr>
            <% for (Student s: students){ %>
             <tr>
                 <td><%=s.getFirst_name() %></td>
                 <td><%=s.getLast_name() %></td>
                  <td><%=s.getDate_of_birth() %></td>
             </tr>
             <%}%>
             
        </table>
              <br/><br/>
                   <a href="index.html"> Back</a>
    </body>
</html>
