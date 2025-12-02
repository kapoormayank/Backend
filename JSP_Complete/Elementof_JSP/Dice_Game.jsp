<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head></head>
    <body>
        <h1 style = "text-align: center;color :brown">Die's Rolled Game...</h1>
        <ul>
        <%
        int count=0;
        int target=6;
        int rollednumber;
        do{
            rollednumber=(int)(Math.random()*6)+1;
            count++;
            %>
            <li>Roll<%= count %>: Your Rolled <%= rollednumber %></li>
            <%
        }while(rollednumber != target);
        %>
        </ul>
    </body>
</html>
