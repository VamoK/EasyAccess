<%-- 
    Document   : getTimetable
    Created on : 22 Jul 2023, 7:18:22 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <form action="GetTimetable.do" method="POST">
            <table>
                <tr>
                    <td>Group ID(Letter):</td>
                    <input type="text" name="group" />
                </tr>
                <tr>
                    <td></td>
                    <input type="submit" value="GET TIMETABLE" />
                </tr>
            </table>
        </form>
    </body>
</html>
