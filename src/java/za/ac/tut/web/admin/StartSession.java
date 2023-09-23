/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.entities.Slots;
import za.ac.tut.entities.Subject;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class StartSession extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        List<Slots> slotList = new ArrayList<>();
        
        List<Subject> moduleList = new ArrayList<>();
        
        session.setAttribute("moduleList", moduleList);
        session.setAttribute("slotList", slotList);
        
        RequestDispatcher disp = request.getRequestDispatcher("admin.jsp");
        disp.forward(request, response);
    }

 
}
