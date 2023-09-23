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
    <center>
             <form class="signup" action="LecturerSignUpServlet.do" method="POST">
                 <table>
                    
                    <p class="topic">LECTURER</p>
                    <p class="topic">SIGN UP</p>
                    <tr>
                        <td>Staff No</td>
                        <td><input class="signupInput" type="text" name="staffnr"></td>
                    </tr>
                    <tr>
                        <td>Initials</td>
                        <td><input class="signupInput" type="text" name="initials"></td>
                    </tr>
                    <tr>
                        <td>Surname</td>
                        <td><input class="signupInput" type="text" name="surname"></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input class="signupInput" type="email" name="email"></td>
                    </tr>
                    <tr>
                        <td>Office Nr</td>
                        <td><input class="signupInput" type="text" name="office"></td>
                    </tr>
                    <tr>
                        <td>Modules</td>
                        <td><input class="check" type="checkbox" name="modules" value="PPA">PPA
                            <input class="check" type="checkbox" name="modules" value="CFA">CFA
                            <input class="check" type="checkbox" name="modules" value="COH">COH
                            <input class="check" type="checkbox" name="modules" value="LFS">LFS
                            <input class="check" type="checkbox" name="modules" value="INF">INF
                            <input class="check" type="checkbox" name="modules" value="CAP">CAP</td>
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

                <input class="subbtn" type="submit" value="REGISTER">
                
                <p>
                    Click <a href="lecturer.jsp">here</a> if you already have lecturer account
                </p>
            </form>
    </center>
    </body>
</html>
