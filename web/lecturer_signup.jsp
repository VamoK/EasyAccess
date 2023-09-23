<%-- 
    Document   : lecturer_signup
    Created on : 12 Aug 2023, 4:09:41 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lecturer Sign Up Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <div class="cover1">
            
             <p class="topic">REGISTER</p>
            
             <form action="LecturerSignUpServlet.do" method="POST">
                <label>StaffNr</label></br>
                <input class="userInput" type="text" name="staffnr"><br>
                <label>Initials</label></br>
                <input class="userInput" type="text" name="initials"><br>
                <label>Surname</label></br>
                <input class="userInput" type="text" name="surname"><br>
                <label>Email</label></br>
                <input class="userInput" type="email" name="email"><br>
                <label>Office No</label></br>
                <input class="userInput" type="text" name="office"><br>
                <labe>Modules</labe><br>
                <input type="checkbox" name="modules" value="PPA">PPA
                <input type="checkbox" name="modules" value="CFA">CFA
                <input type="checkbox" name="modules" value="COH">COH
                <input type="checkbox" name="modules" value="LFS">LFS
                <input type="checkbox" name="modules" value="INF">INF
                <input type="checkbox" name="modules" value="CAP">CAP</br>
                <label>Password</label></br>
                <input class="userInput" type="password" name="password"><br>
                <label>Verify Password</label></br>
                <input class="userInput" type="password" name="v_password"><br>
                
                
                <input class="submit" type="submit" value="REGISTER">
                
                <p>
                    Click <a href="lecturer.jsp">here</a> if you already have lecturer account
                </p>
            </form>
    </body>
</html>
