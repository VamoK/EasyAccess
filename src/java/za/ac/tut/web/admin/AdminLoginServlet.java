/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.AdministratorFacadeLocal;
import za.ac.tut.entities.Administrator;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class AdminLoginServlet extends HttpServlet {
    @EJB
    private AdministratorFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long id = Long.parseLong(request.getParameter("staffID"));
        
        String password = request.getParameter("password");
        
        System.out.println("id " + id + " password " + password);
        
        Administrator admin = afl.login(id , password);
        
        RequestDispatcher disp = request.getRequestDispatcher("admin_home.jsp");
        disp.forward(request, response);
    }

}
