/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.lecturer;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.LecturerFacadeLocal;
import za.ac.tut.entities.Lecturer;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class LecturerLoginServlet extends HttpServlet {
    @EJB
    private LecturerFacadeLocal lfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        Long id = Long.parseLong(request.getParameter("staffnr"));
        
        String password = request.getParameter("password");
        
        Lecturer lecturer = lfl.login(id, password);
        
        String initials = lecturer.getInitials();
        
        String surname = lecturer.getSurname();
        
       session.setAttribute("surname", surname);
       session.setAttribute("initials", initials);
        
        RequestDispatcher disp = request.getRequestDispatcher("lecturer_home.jsp");
        disp.forward(request, response);
    }

}
