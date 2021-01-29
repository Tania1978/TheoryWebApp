<%-- 
    Document   : include
    Created on : Jan 28, 2021, 3:19:10 PM
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
        <header>
        <jsp:include page="header.jsp" />
        </header>
        <h4>If it is a static html like a static Header or Footer, then both ways of including are the same, the directive and the standard action.
            BUT, when the included jsp is dynamic, then there IS a difference: </br>
            1. Include directive --> @ include... </br>
            Το include θα γίνει στο translation time. (οταν παει να γινει το .java --> .class)  </br>
            Δηλαδη απο τις 2 jsp θα προσπαθήσει να φτιάξει 1 αρχείο java και στην συνέχεια να μετατρέψει αυτό σε class servlet. </br>
            2.2. Include standard action  jsp:include </br>
           Το include αυτο θα γινει στο runtime. Δηλαδή θα φτιαχτούν 2 java αρχεια και 2 class. Τα 2 class θα τρεξουν και θα ενώσουν μετά την απάντηση τους (τα out.write).  </br>
           This is important eg when: A variable is declared in the first jsp and it is also declared in the second jsp.  </br>
           In the first case, when 1 servlet will be ormed and everything will get into the SAME service method, there will be a compilation error Duplicate Variable Declaration </br>
           In the second case there will NOT be a problem! </br>
            </br>
        </h4>
           <% String s = "Hello";%> 
               <%--   RUNNING THIS WILL GIVE A DUPLICATE LOCAL VARIABLE!--%>
                  <%--   <%@ include file = "include2.jsp" %>--%>
                 <%--   RUNNING THIS WILL BE FINE!--%>
                 
                <jsp:include page="include2.jsp" />
             
                <footer>
        <%@ include file = "footer.jsp" %>
                </footer> 
                
                  <a href="index.html"> Back</a>
    </body>
</html>
