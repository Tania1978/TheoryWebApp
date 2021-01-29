<%-- 
    Document   : Form
    Created on : Jan 28, 2021, 11:42:02 AM
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

        <div id="formdiv">
        <form action="Servlet2" method="post">
            <input type ="hidden"  name="form" value="nameage"> 
             <input type="text" name="name" placeholder = "Name">  <br/>
           <input type="number" name="age" placeholder = "Age">   <br/>
            <input type="submit" name="submit" value="submit">
        </form>
        </div>
        <p>Parameters entered by user will go to the Servlet which will run the Post Method.
        The Sevlet will also declare a (a) request attribute, (b) a session attribute and (c) an application (Servlet Context) attribute</p>

    </body>
</html>
