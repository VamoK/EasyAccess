<%-- 
    Document   : newjspstudent_notifications_outome
    Created on : 16 Sep 2023, 5:09:40 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Notification"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Notifications Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navigation">
            
            <ul class="navList">
                
                <li class="list">
                    <a href="student_home.jsp" class="navLink">HOME</a>
                </li>
                <li class="list">
                    <a href="GetTimetableServlet.do" class="navLink">TIMETABLE</a>
                </li>
                <li class="list">
                        <a href="GetNotificationServlet.do" class="active">NOTIFICATIONS</a>
                </li>
                <li class="list">
                    <a href="LogoutServlet.do" class="navLink">LOGOUT</a>
                </li>
            </ul>
        </nav>
        
        <table class="classList">
            <tr>
                <th>Notifications</th> 
            </tr>
        
        <%
            List<Notification> notifications = (List<Notification>) request.getAttribute("notifications");
            
            for(int i = 0 ; i < notifications.size() ; i++ ){
                String message = notifications.get(i).getMessage();
                String code = notifications.get(i).getModuleCode();
            
        %>
        
            <tr>
                <td class="notSub"><%=code%></td>
            </tr>
            <tr>
                <td><%=message%></td>
            </tr>
            
          <%
            }
        %>
        </table>
            
       
        </div>
    </body>
</html>
