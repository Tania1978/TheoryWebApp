/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tania
 */
public class SendRedirectServlet extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String year = request.getParameter("year");
         response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>User Controller</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Response coming from doGet</h1>");
            out.println(year);
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String year = request.getParameter("year");
               response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>User Controller</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Response coming from doPost</h1>");
            out.println(year);
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
