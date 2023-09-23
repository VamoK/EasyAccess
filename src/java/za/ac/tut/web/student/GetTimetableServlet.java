/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.student;

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

/**
 *
 * @author Vamokuhle Khumalo
 */
public class GetTimetableServlet extends HttpServlet {
    @EJB
    private GroupsFacadeLocal gfl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        String studGrp = (String)session.getAttribute("studGrp");
        
        Groups groups = gfl.find(studGrp);
        
        session.setAttribute("groups", groups);
        
        RequestDispatcher disp = request.getRequestDispatcher("student_timetable_outcome.jsp");
        disp.forward(request, response);
    }

}
