/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Student;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;

public class AjaxServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String persistenceUnit = "TheoryWebAppPU";
        EntityManagerFactory emf = Persistence.createEntityManagerFactory(persistenceUnit);
        EntityManager em = emf.createEntityManager();
        List<Student> students = em.createQuery("SELECT u FROM Student u").getResultList();

        String jsonaccountlist = new Gson().toJson(students);
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        // write in the body of the response
        PrintWriter out = response.getWriter();
        //      out.print("Hello "+ name + "!!");
        out.print(jsonaccountlist);
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        PrintWriter out = response.getWriter();
        out.print("Hello " + name + "!!");
        out.flush();

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
