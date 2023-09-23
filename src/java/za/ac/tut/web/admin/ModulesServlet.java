/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.admin;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.SubjectFacadeLocal;
import za.ac.tut.entities.Slots;
import za.ac.tut.entities.Subject;
import za.ac.tut.entities.Timetable;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class ModulesServlet extends HttpServlet {
    @EJB
    private SubjectFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        String moduleCode = request.getParameter("code");
        String monday = request.getParameter("monday");
        String tuesday = request.getParameter("tuesday");
        String wednesday = request.getParameter("wednesday");
        String thursday = request.getParameter("thursday");
        String friday = request.getParameter("friday");
        
        List<Slots> slotList = (List<Slots>) session.getAttribute("slotList");
        
        Subject module = createModule(moduleCode,monday,tuesday,wednesday,thursday,friday,slotList);
        
        String timetableID = (String)session.getAttribute("timetableID");
        
        List<Subject> moduleList = (List<Subject>) session.getAttribute("moduleList");
        moduleList.add(module);
        
        Timetable timetable = new Timetable(timetableID);
        timetable.setModules(moduleList);

        session.setAttribute("timetable", timetable);
        session.setAttribute("slotList", slotList);
        session.setAttribute("module", module);
        session.setAttribute("moduleList", moduleList);
        
        RequestDispatcher disp = request.getRequestDispatcher("output.jsp");
        disp.forward(request, response);
    }

    private Subject createModule(String moduleCode, String monday, String tuesday, String wednesday, String thursday, String friday, List<Slots> slotList) {
        
        Subject module = new Subject(moduleCode);
        
        Slots slots = new Slots("10:00 - 11:00 10-138", "10:00 - 11:00 10-138", "10:00 - 11:00 10-138", "10:00 - 11:00 10-138", "10:00 - 11:00 10-138");
        
        slotList.add(slots);
        
        module.setSlots(slotList);

        return module;
        
    }

}
