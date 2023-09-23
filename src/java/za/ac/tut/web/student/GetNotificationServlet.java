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
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.NotificationFacadeLocal;
import za.ac.tut.entities.Notification;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class GetNotificationServlet extends HttpServlet {
    @EJB
    private NotificationFacadeLocal nfl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        String studGrp = (String)session.getAttribute("studGrp");
        
        List<Notification> notifications = nfl.getGroupNotification(studGrp);
        
        request.setAttribute("notifications", notifications);
        
        RequestDispatcher disp = request.getRequestDispatcher("student_notifications_outome.jsp");
        disp.forward(request, response);
        
    }

  

}
