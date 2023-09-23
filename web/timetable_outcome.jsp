<%-- 
    Document   : timetable_outcome
    Created on : 22 Jul 2023, 7:25:57 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page import="za.ac.tut.entities.Times"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Module"%>
<%@page import="za.ac.tut.entities.Timetable"%>
<%@page import="za.ac.tut.entities.Groups"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Groups g = (Groups) request.getAttribute("g");
            Timetable tt = g.getTimetable();
            List<Module> mList = tt.getModules();
        %>
        
        <table >
            <tr>
                <th>Modules<th>
                <th>Monday<th>
                <th>Tuesday<th>
                <th>Wednesday<th>
                <th>Thursday<th>
                <th>Friday<th>
            </tr>
            
            <%
                for(int i = 0 ; i < mList.size() ; i++){
                   Module m = mList.get(i);
                   String module = m.getCode();
                   List<Times> tList = m.getTime();
                   String monday = tList.get(i).getMonday();
                   String tuesday = tList.get(i).getTuesday();
                   String wednesday = tList.get(i).getWednesday();
                   String thursday = tList.get(i).getThursday();
                   String friday = tList.get(i).getFriday();
                   
                
            %>
            
            

            <tr>
                <td><%=module%></td>
                <td><%=monday%></td>
                <td><%=tuesday%></td>
                <td><%=wednesday%></td>
                <td><%=thursday%></td>
                <td><%=friday%></td>
            </tr>
           
            <%
                }
            %>
        </table>
    </body>
</html>
