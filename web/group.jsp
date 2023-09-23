<%-- 
    Document   : group
    Created on : 17 Jul 2023, 6:25:33 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <!--Navigation bar-->
        
        <nav class="navbar">
            <ul class="navList">
                
                <li class="list">
                    <a href="admin_home.jsp" class="navLink">HOME</a>
                </li>
                <li class="list">
                    <a href="group.jsp" class="active">ADD TIMETABLE</a>
                </li>
                <li class="list">
                        <a href="AllGroupsServlet.do" class="navLink">GROUPS</a>
                </li>
                <li class="list">
                        <a href="LogoutServlet.do" class="navLink">LOG OUT</a>
                </li>
            </ul>
        </nav>
        
    <center>
        <div class="cover">
            <form action="GroupServlet.do" method="POST">
                <label>Group ID</label></br>
                <input class="userInput" type="text" name="groupID"><br>


                <input class="submit" type="submit" value="ADD GROUP">
            </form>
        </div>
    </center>
        
    </body>
</html>
