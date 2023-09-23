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
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <%
                    List<Groups> allGroup = (List<Groups>) request.getAttribute("allGroup");
                    
        %>
        
    <center>
            <form class="signup" action="AddStudentServlet.do" method="POST">
                <table>
                    
                    <p class="topic">STUDENT</p>
                    <p class="topic">SIGN UP</p>
                    <tr>
                        <td>Student No</td>
                        <td><input class="signupInput" type="text" name="studNr"></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input class="signupInput" type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>Surname</td>
                        <td><input class="signupInput" type="text" name="surname"></td>
                    </tr>
                    <tr>
                        <td>Group ID</td>
                        <td> <select name="group">
                            <option></option>
                            <%
                                for(int i = 0 ; i < allGroup.size() ; i++){
                        
                                String group = allGroup.get(i).getId();
                            %>
                             <option><%=group%></option>
                
                            <%
                                   }
                             %>
                        </select></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input class="signupInput" type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td>Verify Password</td>
                        <td><input class="signupInput" type="password" name="v_password"></td>
                    </tr>
                </table>
                               
                        <input class="subbtn" type="submit" value="ADD STUDENT">
                        
                        <p>Click <a href="student.jsp">here</a> if you already have an account</p>
            </form>
    </center>
    </body>
</html>
