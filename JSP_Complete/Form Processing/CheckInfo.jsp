<!DOCTYPE html>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>
            Use of Checkbox Jsp File
        </title>
    </head>
    <body>
        <h1 style="text-align: center;text-decoration: double;text-transform: capitalize;">Reading Checkbox Data</h1>
        <ul>
            <li><p><b>Maths Flag </b><%= request.getParameter("Math") %></p></li>
            <li><p><b>Physic Flag </b><%= request.getParameter("Physic") %></p></li>
            <li><p><b>Chemitry Flag </b><%= request.getParameter("Chemitry") %></p></li>
        </ul>
    </body>
</html>
