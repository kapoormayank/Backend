<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head>
        <title>
            If-Else condition
        </title>
    </head>
    <body>
        <h1 style="text-align: center;">Welcome the guest..</h1>
        <%
        String gender = "m";
        String strgender = (gender == "m")?"Mr.":"Ms.";
        %>
        <p>Welcome <%= strgender %></p>
    </body>
</html>