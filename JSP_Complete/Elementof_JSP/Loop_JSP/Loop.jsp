<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head>
        <title>
            Use for Loop
        </title>
    </head>
    <body>
        <%
        int n = 10;
        for(int i=1;i<=n;i++){
            %>
            <li><%= i %></li>;
            <%
        }
        %>
    </body>
</html>

