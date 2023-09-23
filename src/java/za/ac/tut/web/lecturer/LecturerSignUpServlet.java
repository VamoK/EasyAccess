/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.lecturer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.LecturerFacadeLocal;
import za.ac.tut.entities.Lecturer;
import za.ac.tut.entities.LecturerModules;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class LecturerSignUpServlet extends HttpServlet {
    @EJB
    private LecturerFacadeLocal lfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long id = Long.parseLong(request.getParameter("staffnr"));
        
        String initials = request.getParameter("initials");
        
        String surname = request.getParameter("surname");
        
        String email = request.getParameter("email");
        
        String office = request.getParameter("office");
        
        String modules[] = request.getParameterValues("modules");
        
        String password = request.getParameter("password");
        
        Lecturer lecturer = new Lecturer(id, initials, surname, email, office, password);
        
        List<LecturerModules> lecturerList = new ArrayList<>();
        
        for (String module : modules) {
            
            LecturerModules lsl = new LecturerModules(module);
            
            lecturerList.add(lsl);
        }
        
        lecturer.setModules(lecturerList);
        
        lfl.create(lecturer);
        
        
        RequestDispatcher disp = request.getRequestDispatcher("lecturer_home.jsp");
        disp.forward(request, response);
    }

}
