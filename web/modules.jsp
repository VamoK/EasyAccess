<%-- 
    Document   : modules
    Created on : 18 Jul 2023, 6:16:12 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Timetable Creation Page</title>
        <link href="EasyAccess.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar">
            <ul class="navList">
                
                <li class="list">
                    <a href="admin_home.jsp" class="navLink">HOME</a>
                </li>
                <li class="list">
                    <a href="group.jsp" class="active">ADD TIMETABLE</a>
                </li>
                <li class="list">
                        <a href="AllGroupsServlet.do" class="navLink">GROUPS</a>
                </li>  
            </ul>
        </nav>
        
        <div class="cover">
            <form action="ModulesServlet.do" method="POST">
                <table>

                    <tr>
                        <td>Module Code: </td>
                         <td>
                             <select class="ttinput" name="code">
                                 <option></option>
                                 <option>PPA</option>
                                 <option>CFA</option>
                                 <option>COH</option>
                                 <option>CAP</option>
                                 <option>LFS</option>
                                 <option>INF</option>
                            </select>
                         </td>

                    </tr>
                    <tr>
                        <td>Monday Time slot: </td>
                        <td><input class="ttinput" type="text" name="monday" /></td>
                    </tr>
                    <tr>
                        <td>Tuesday Time slot:</td>
                        <td><input class="ttinput" type="text" name="tuesday" /></td>
                    </tr>
                    <tr>
                        <td>Wednesday Time slot:</td>
                        <td><input class="ttinput" type="text" name="wednesday" /></td>
                    </tr>
                    <tr>
                        <td>Thursday Time slot:</td>
                        <td><input class="ttinput" type="text" name="thursday" /></td>
                    </tr>
                    <tr>
                        <td>Friday Time slot:</td>
                        <td><input class="ttinput" type="text" name="friday" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input class="ttinput" type="submit" value="ADD MODULE TIMES" /></td>
                    </tr>
                </table>
            </form>
        </div>
        
    </body>
</html>
