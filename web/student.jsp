<%-- 
    Document   : student
    Created on : 22 Jul 2023, 5:33:32 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            
             <p class="topic">STUDENT</p>
             <p class="topic">SIGN IN</p>
            
             <form action="StudentLoginServlet.do" method="POST">
                <label>Student Number</label></br>
                <input class="userInput" type="text" name="studentNumber"><br>
                <label>Password</label></br>
                <input class="userInput" type="password" name="password"><br>
                
                <input class="submit" type="submit" value="LOGIN">
                
                <p>
                    Click <a href="GetAvailableGgroupsServlet.do">here</a> to create a student account
                </p>
            </form>
        </div>
    </body>
</html>
