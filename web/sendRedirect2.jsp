<%-- 
    Document   : sendRedirect2
    Created on : Jan 28, 2021, 1:50:22 PM
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
          <p>With the sendRedirect(), the response comes back and ANOTHER request arrives. Therefore we CANNOT see (a) The parameters of the user of the 1st request!:</p>
         <p> Name <%= request.getParameter("name")%>  Age  <%=request.getParameter("age")%></p>
       <p> (b) We CANNOT SEE The attributes of the request scope:</p>
        <p>city <%= request.getAttribute("city")%>  </p>
        <p> BUT we CAN see The attributes of the session scope:</p>
        <p>username <%=session.getAttribute("username")%>  </p>    
        <p>We open a session at login servlet. Session carries User specific info that we want available through the session.</p>
             <p> And WE CAN SEE The attributes of the application scope:</p>
        <p>appname <%= application.getAttribute("appname")%>  </p>     
         <p> And I can also get the parameter I put in the web.xml = context-param:</p>
        <p>Company name: <%= application.getInitParameter("companyname")%></p>
        <p> HOWEVER, I can get the parameters I wrote IN THE URL of the sendRedirect! </p>
        <p> msg:  <%= request.getParameter("msg") %> </p>
        
        <p>BUT  If a servlet produces a response, eg a list from the DB, and sets it as an attribute eg request.setAttribute("list","users) and we
            send redirect, the list is LOST.</p>
        
        <p>What happens if I sendRedirect() to a servlet? Which method gets called? doPost or doGet? Uncomment the sendRedirect from the sendRedirect2.jsp - calls doGet!!! </p>
      <%--   <% response.sendRedirect("SendRedirectServlet?year=2021"); %>--%>
      <br>
             <a href="index.html"> Back</a>
    </body>
</html>
