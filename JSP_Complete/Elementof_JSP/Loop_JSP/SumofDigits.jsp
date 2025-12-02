<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head>
        <title>
            Sum of number 1 to 100 by using loop
        </title>
    </head>
    <body>
        <h2 style="text-align: center;">Sum of numbers from 1 to 100</h2>
        <% 
        int sum = 0; 
        for(int i=1;i<=100;i++){
            sum = sum + i;
        }
        %>
        <h3 style="text-align: center;text-decoration: underline;"><%= sum %></h3>
    </body>
</html>

