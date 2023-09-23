/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.GroupsFacadeLocal;
import za.ac.tut.entities.Groups;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class GetAvailableGgroupsServlet extends HttpServlet {
    @EJB
    private GroupsFacadeLocal gfl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Groups> allGroup = gfl.findAll();
        
        request.setAttribute("allGroup", allGroup);
        
        RequestDispatcher disp = request.getRequestDispatcher("student_signup.jsp");
        disp.forward(request, response);
    }

   
}
