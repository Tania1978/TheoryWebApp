/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tania
 */
public class Servlet2 extends HttpServlet {



   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String name = request.getParameter("name");
      int age =Integer.parseInt(request.getParameter("age"));
      
      // SET ATTRIBUTES WITH DIFFERENT SCOPES
      
      // request scope - through all the path of the request.
      request.setAttribute("city", "athens");
      
      // session scope - can be received from jsp/servlets even if they are NOT in the path of the request.
     HttpSession session = request.getSession();
     session.setAttribute("username", "user");
     
     //application scope available wherever in the application
   ServletContext sc = request.getServletContext();
     sc.setAttribute("appname", "app");
     
     // I could also add the application scope param in the web.xml file by
//     <context-param>
//             <param-name> appname </param-name>
//             <param-value> app </param-value>
//       <context-param>
//BUT to GET it from anywhere I want I should ask for <%= application.getInitParameter("appname")%> AS IT IS A PARAMETER and NOT an ATTRIBUTE now....
// this way it is BETTER as If I want ot change it I can change it only in web.xml and it changes everywhere. We formed such a parameter with companyname
     
       RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
      rd.forward(request, response);
      
      
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
