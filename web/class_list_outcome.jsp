<%-- 
    Document   : class_list_outcome
    Created on : 16 Sep 2023, 12:16:06 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Class List Outcome Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        
        <nav class="nav">
            
            <ul class="navList">
                
                <li class="list">
                    <a href="lecturer_home.jsp" class="navLink">HOME</a>
                </li>
                <li class="list">
                    <a href="send_notification.jsp" class="navLink">NOTIFICATION</a>
                </li>
                <li class="list">
                        <a href="class_list.jsp" class="active">CLASS LIST</a>
                </li>
                <li class="list">
                        <a href="LogoutServlet.do" class="navLink">LOG OUT</a>
                </li>
                
            </ul>
        </nav>
        
        <%
            String groupID = (String)request.getAttribute("groupID");
            List<Student> classList = (List<Student>) request.getAttribute("classList");
        %>
        
        <h1>CLASS LIST FOR GROUP <%=groupID%></h1>
        
        <table>
            <tr>
               <th>Student Number</th>
                <th>Name</th>
                <th>Surname</th> 
            </tr>
            
            
            <%
                for(int i = 0 ; i < classList.size() ; i++){
                    
                    Long id = classList.get(i).getId();
                    String name = classList.get(i).getName();
                    String surname = classList.get(i).getSurname();
                
            %>
            
            <tr>
                <td><%=id%></td>
                <td><%=name%></td>
                <td><%=surname%></td>
            </tr>
            
            <%
                }
            %>
        </table>
    </body>
</html>
