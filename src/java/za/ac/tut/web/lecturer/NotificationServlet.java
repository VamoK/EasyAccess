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
import za.ac.tut.ejb.NotificationFacadeLocal;
import za.ac.tut.entities.Notification;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class NotificationServlet extends HttpServlet {
    @EJB
    private NotificationFacadeLocal nfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String groupID = request.getParameter("group");
        
        String module = request.getParameter("module");
        
        String notification = request.getParameter("notification");
        
        Notification notificationObj = new Notification(module, groupID, notification);
        
        nfl.create(notificationObj);
        
        RequestDispatcher disp = request.getRequestDispatcher("notification_outcome.jsp");
        disp.forward(request, response);
    }

}
