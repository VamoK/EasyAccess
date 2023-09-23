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
import za.ac.tut.ejb.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class AddStudentServlet extends HttpServlet {
    @EJB
    private StudentFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long studNr = Long.parseLong(request.getParameter("studNr"));
        
        String name = request.getParameter("name");
        
        String surname = request.getParameter("surname");
        
        String group = request.getParameter("group");
        
        String email = studNr + "@easyaccess.ac.za";
        
        String password = request.getParameter("password");
        
        Student student = new Student(studNr, name, surname, group, email, password);
        
        sfl.create(student);
        
        RequestDispatcher disp = request.getRequestDispatcher("student.jsp");
        disp.forward(request, response);
    }

}
