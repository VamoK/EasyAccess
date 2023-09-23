<%-- 
    Document   : groups
    Created on : 09 Sep 2023, 5:08:02 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page import="za.ac.tut.entities.Timetable"%>
<%@page import="za.ac.tut.entities.Groups"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Available Groups Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar">
            <ul class="navList">
                
                <li class="list">
                    <a href="admin_home.jsp" class="navLink">HOME</a>
                </li>
                <li class="list">
                    <a href="group.jsp" class="navLink" >ADD TIMETABLE</a>
                </li>
                <li class="list">
                        <a href="AllGroupsServlet.do" class="active" >GROUPS</a>
                </li>
                <li class="list">
                        <a href="LogoutServlet.do" class="navLink">LOG OUT</a>
                </li>
            </ul>
        </nav>
        
        <h1>Groups</h1>
        <table class="classList">
            <tr>
                <th>Groups</th>
                <th>Timetable ID</th>
            </tr>
        <%
            List<Groups> allGroups = (List<Groups>) request.getAttribute("allGroups");
            
            for(int i= 0 ; i < allGroups.size() ; i++){
                String groupID = allGroups.get(i).getId();
                Timetable timetable = allGroups.get(i).getTimetables();
                String id = timetable.getId();
        %>
        
        
            <tr>
                <td><%=groupID%></td>
                <td><%=id%></td>
            </tr>
            
            <%
           }
       %>
        </table>
            
       
    </body>
</html>
