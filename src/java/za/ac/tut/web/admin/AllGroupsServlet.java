/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class AllGroupsServlet extends HttpServlet {
    @EJB
    private GroupsFacadeLocal gfl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Groups> allGroups = gfl.findAll();
        
        request.setAttribute("allGroups", allGroups);
        
        RequestDispatcher disp = request.getRequestDispatcher("groups.jsp");
        disp.forward(request, response);
    }

}
