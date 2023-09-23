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
                    <a href="LogoutSservlet.do" class="navLink">LOGOUT</a>
                </li>
            </ul>
        </nav>
        
        <div class="notifications">
            
            <div class="notificationHeader">
                <h4>PPA</h4>
                
            </div> 
        </div>
    </body>
</html>
