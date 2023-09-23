<%-- 
    Document   : student_timetable_outcome
    Created on : 16 Sep 2023, 7:37:48 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page import="za.ac.tut.entities.Slots"%>
<%@page import="za.ac.tut.entities.Subject"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Timetable"%>
<%@page import="za.ac.tut.entities.Groups"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Timetable Outcome Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        
        <nav class="navigation">
            
            <ul class="navList">
                
                <li class="list">
                    <a href="student_home.jsp" class="navLink">HOME</a>
                </li>
                <li class="list">
                    <a href="GetTimetableServlet.do" class="active">TIMETABLE</a>
                </li>
                <li class="list">
                        <a href="GetNotificationServlet.do" class="navLink">NOTIFICATIONS</a>
                </li>
                <li class="list">
                    <a href="LogoutSservlet.do" class="navLink">LOGOUT</a>
                </li>
            </ul>
        </nav>
        
    <center>   
        <table class="timetable">
            <tr>
                <th>Module</th>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
            </tr>
        <!--<%
            Groups groups = (Groups) session.getAttribute("groups");
            Timetable timetable = groups.getTimetables();
            List<Subject> subject = timetable.getModules();
            
            for(int i = 0 ; i < subject.size() ; i++){
                
                String subjects = subject.get(i).getId();
                
                List<Slots> slots = subject.get(i).getSlots();
                
                
        %>
        
        
            <tr>
                <td><%=subjects%></td>
        <%
                for(int j = 0 ; j < slots.size() ; j++){
                
                
                String monday = slots.get(j).getMonday();
                String tuesday = slots.get(j).getTuesday();
                String wednesday = slots.get(j).getWednesday();
                String thursday = slots.get(j).getThursday();
                String friday = slots.get(j).getFriday();
        
        %>
                <td><%=monday%></td>
                <td><%=tuesday%></td>
                <td><%=wednesday%></td>
                <td><%=thursday%></td>
                <td><%=friday%></td>
            </tr>
       <%
           }
        }
       %>-->
       
       <tr>
           <td class="module">PPA</td>
           <td>10:00 - 11:00 10-138</td>
           <td>10:00 - 11:00 10-138</td>
           <td>10:00 - 11:00 10-138</td>
           <td>10:00 - 11:00 10-138</td>
           <td>10:00 - 11:00 10-138</td>
       </tr>

        </table>
    </center>
    </body>
</html>
