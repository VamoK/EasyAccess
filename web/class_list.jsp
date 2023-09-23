<%-- 
    Document   : class_list
    Created on : 15 Sep 2023, 8:15:24 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Class List Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
        
        
    </head>
    <body>
          <!--Navigation bar-->
        
        <nav class="nav">
            
            <ul class="navList">
                
                <li class="list">
                    <a href="lecturer_home.jsp" class="navLink" >HOME</a>
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
          
          <center>
        <div class="cover">
            <form action="ClassListServlet.do" method="POST">
                <label>Group ID</label></br>
                <input class="userInput" type="text" name="groupID"><br>


                <input class="submit" type="submit" value="GET CLASSLIST">
            </form>
        </div>
    </center>
    </body>
</html>
