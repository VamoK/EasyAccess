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
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.GroupsFacadeLocal;
import za.ac.tut.entities.Groups;
import za.ac.tut.entities.Timetable;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class EndSessionServlet extends HttpServlet {
    @EJB
    private GroupsFacadeLocal gfl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        String groupID = (String) session.getAttribute("groupID");
        Timetable timetable = (Timetable) session.getAttribute("timetable");
        
        Groups group = new Groups(groupID, timetable);
        
        gfl.create(group);
        
        session.invalidate();
        
        RequestDispatcher disp = request.getRequestDispatcher("admin_home.jsp");
        disp.forward(request, response);
    }

}
