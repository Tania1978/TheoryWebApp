<%-- 
    Document   : DropDown
    Created on : Jan 28, 2021, 11:13:31 AM
    Author     : tania
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /* Dropdown Button */
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {background-color: #3e8e41;}
            
            
        </style>
    </head>
    <body>
        <% ArrayList <String> categories = new ArrayList();
        categories.add("Romance");
        categories.add("Horror");
        categories.add("Adventure");
        categories.add("Science");
        %>
        
        <div class="dropdown">
  <button class="dropbtn">Categories</button>
  <div class="dropdown-content">
 <% for(String s:categories){ %>
 <a href="CatResult.jsp?cat=<%= s %>"> <%=s%></a>  
 <%}%>
 
  </div>
</div>
    </body>
</html>
