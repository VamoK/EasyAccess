/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class GroupServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        String groupID = request.getParameter("groupID");
        String timetableID = request.getParameter("groupID");
        
        session.setAttribute("groupID", groupID);
        session.setAttribute("timetableID", timetableID);
        
        RequestDispatcher disp = request.getRequestDispatcher("modules.jsp");
        disp.forward(request, response);
    }

}
