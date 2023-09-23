/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.lecturer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class ClassListServlet extends HttpServlet {
    @EJB
    private StudentFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String groupID = request.getParameter("groupID");
        
        List<Student> classList = sfl.classList(groupID);
        
        request.setAttribute("classList", classList);
        request.setAttribute("groupID", groupID);
        
        RequestDispatcher disp = request.getRequestDispatcher("class_list_outcome.jsp");
        disp.forward(request, response);
    }

}
