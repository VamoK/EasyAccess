<%-- 
    Document   : student_home
    Created on : 16 Sep 2023, 12:43:16 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Home Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navigation">
            
            <ul class="navList">
                
                <li class="list">
                    <a href="student_home.jsp" class="active">HOME</a>
                </li>
                <li class="list">
                    <a href="GetTimetableServlet.do" class="navLink">TIMETABLE</a>
                </li>
                <li class="list">
                        <a href="GetNotificationServlet.do" class="navLink">NOTIFICATIONS</a>
                </li>
                <li class="list">
                    <a href="LogoutSservlet.do" class="navLink">LOGOUT</a>
                </li>
            </ul>
        </nav>
        
        <section class="section1">
            <div class="image">
                <img src="" alt="welcome image">
            </div>
            <div class="text">
                <p>STUDENT</p>
            </div>
        </section>
    </body>
</html>
