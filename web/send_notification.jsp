<%-- 
    Document   : send_notification
    Created on : 15 Sep 2023, 8:26:20 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notifications Page</title>
        
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <nav class="nav">
            
            <ul class="navList">
                
                <li class="list">
                    <a href="lecturer_home.jsp" class="navLink" >HOME</a>
                </li>
                <li class="list">
                    <a href="send_notification.jsp" class="active">NOTIFICATION</a>
                </li>
                <li class="list">
                        <a href="class_list.jsp" class="navLink">CLASS LIST</a>
                </li>
                <li class="list">
                        <a href="LogoutServlet.do" class="navLink">LOG OUT</a>
                </li>  
            </ul>
        </nav>

        <div class="box">
            <form action="NotificationServlet.do" method="POST">
                    <label class="form-label">Group ID</label><br>
                    <input type="text" class="form-control" name="group"><br>
                    
                    <label class="form-label">Module ID</label><br>
                    <input type="text" class="form-control" name="module"><br>
                
                    <label class="form-label">Message</label><br>
                    <textarea class="form-textarea" name="notification" rows="10" cols="120"></textarea>
                    
                    <input type="submit" class="userInput" value="SEND NOTIFICATION">
               
            </form>
        </div>

    </body>
</html>
