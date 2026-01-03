<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head>
        <title>
            USE NESSTED LOOP
        </title>
    </head>
    <body>
        <h1 style="text-align:center;">Table from 1 to 20 </h1>
        <table border = "1">
        <%
        for(int i =1;i<21;i++){
            %>
            <tr>
            <%
            for(int j=1;j<=10;j++){
                %>
                <td style="text-align: center;"><%= i %> * <%= j %> = <%= i*j %></td>
                <%
            }
            %>
        </tr>
        <%
        }
        %>
        </table>
    </body>
</html>

