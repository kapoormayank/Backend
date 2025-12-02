<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head>
        <title>
            Factorial of Given Number
        </title>
    </head>
    <body>
        <h1 style="text-align: center;text-decoration:  red;">Factorial Of Number is</h1>
        <% int sum = 1;
        for(int i=1;i<=5;i++){
            sum = sum*i;
        }
        %>
        <p style="text-align: start;text-shadow: 0in;">Factorial of 5 is : <%= sum %></p>
    </body>
</html>


