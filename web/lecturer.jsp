<%-- 
    Document   : lecturer
    Created on : 30 Jul 2023, 8:33:48 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lecturer Login Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            
             <p class="topic">LECTURER</p>
             <p class="topic">SIGN IN</p>
            
             <form action="LecturerLoginServlet.do" method="POST">
                <label>Staff Number</label></br>
                <input class="userInput" type="text" name="staffnr"><br>
                <label>Password</label></br>
                <input class="userInput" type="password" name="password"><br>
                
                <input class="submit" type="submit" value="LOGIN">
                
                <p>
                    Click <a href="lecturer_signup.jsp">here</a> to create a lecturer account
                </p>
            </form>
        </div>
    </body>
</html>
