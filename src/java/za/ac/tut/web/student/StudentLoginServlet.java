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
import za.ac.tut.ejb.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class StudentLoginServlet extends HttpServlet {
    @EJB
    private StudentFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        Long id = Long.parseLong(request.getParameter("studentNumber"));
        
        String password = request.getParameter("password");
        
        Student student = sfl.login(id, password);
        
        String studGrp = student.getGroupID();
        
        String name = student.getName();
        
        String surname = student.getSurname();
        
        session.setAttribute("studGrp", studGrp);
        session.setAttribute("name", name);
        session.setAttribute("surname", surname);
        
        RequestDispatcher disp = request.getRequestDispatcher("student_home.jsp");
        disp.forward(request, response);
    }

}
