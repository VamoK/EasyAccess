<%-- 
    Document   : admin_home
    Created on : 16 Aug 2023, 11:15:13 AM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <!--Navigation bar-->
        
        <nav class="nav">
            
            <ul class="navList">
                
                <li class="list">
                    <a href="admin_home.jsp" class="active">HOME</a>
                </li>
                <li class="list">
                    <a href="group.jsp" class="navLink">ADD TIMETABLE</a>
                </li>
                <li class="list">
                        <a href="AllGroupsServlet.do" class="navLink">GROUPS</a>
                </li>
                <li class="list">
                        <a href="LogoutServlet.do" class="navLink">LOG OUT</a>
                </li>
                
            </ul>
        </nav>
    </body>
</html>
