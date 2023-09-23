<%-- 
    Document   : lecturer_home
    Created on : 15 Sep 2023, 7:08:05 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lecturer Home Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
           <!--Navigation bar-->
        
        <nav class="nav">
            
            <ul class="navList">
                
                <li class="list">
                    <a href="lecturer_home.jsp" class="active">HOME</a>
                </li>
                <li class="list">
                    <a href="send_notification.jsp" class="navLink">NOTIFICATION</a>
                </li>
                <li class="list">
                        <a href="class_list.jsp" class="navLink">CLASS LIST</a>
                </li>
                <li class="list">
                        <a href="LogoutServlet.do" class="navLink">LOG OUT</a>
                </li>
                
            </ul>
        </nav>
           
           <!--image-->
        <section class="section1">
            <div class="image">
                <img src="" alt="welcome image">
            </div>
            <%
                String surname = (String) session.getAttribute("surname");
                String initials = (String) session.getAttribute("initials");
            %>
            <div class="text">
                <p>LECTURER</p>
            </div>
        </section>
    </body>
</html>
