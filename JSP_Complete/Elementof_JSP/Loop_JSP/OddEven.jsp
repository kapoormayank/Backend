<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head>
        <title>
            Find And Print Odd And Even Number
        </title>
    </head>
    <body>
        <h1 style="text-align : center;color : red;">Print Odd And Even Numbers</h1>
        <h2 style="text-align : left; color : green">Odd Numbers : </h2>
        <p>
        <%
        for(int i=1;i<=100;i++){
            if(i%2 == 0){
                %>
                <%= i %>
                <%
            }
        }
        %>
    </p>
        <h2 style="text-align : left;color : rgba(255, 230, 0, 0.512)">Even Numbers : </h2>
        <p>
            <%
        for(int i =1;i<=100;i++){
            if(i%2 != 0){
                %>
                <%= i %>
                <%
            }
        }
        %>
        </p>
    </body>
</html>

