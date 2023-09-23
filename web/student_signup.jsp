<%-- 
    Document   : student_signup
    Created on : 16 Sep 2023, 3:42:44 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page import="za.ac.tut.entities.Groups"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Sign Up Page</title>
    </head>
    <body>
        <%
                    List<Groups> allGroup = (List<Groups>) request.getAttribute("allGroup");
        %>
        <div class="signup">
            <form action="AddStudentServlet.do" method="POST">
                <label>Student No</label>
                <input type="text" name="studNr"><br>
                <label>Name</label>
                <input type="text" name="name"><br>
                <label>Surname</label>
                <input type="text" name="surname"><br>
                <label>Group ID</label>
                <select name="group">
                    <option></option>
                <%
                    for(int i = 0 ; i < allGroup.size() ; i++){
                        
                    String group = allGroup.get(i).getId();
                %>
                <option><%=group%></option>
                
                <%
                    }
                %>
                </select><br>
                
                <label>Password</label>
                <input type="password" name="password"><br>
                <label>Verify Password</label>
                <input type="password" name="v_password"><br>                
                
                <input type="submit" value="ADD STUDENT">
            </form>
        </div>
    </body>
</html>
