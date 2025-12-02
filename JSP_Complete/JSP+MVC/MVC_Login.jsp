<!-- Multi View Controller Login Page -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="MVC.User" %>
<%@ page import="java.util.List" %>
<html>
    <head>
        <title>
            Login Page
        </title>
        <style>
            body{
                font-family: Arial, Helvetica, sans-serif;
                background-color: cadetblue;
            }
        </style>
    </head>
    <body>
        <h1 style="text-align: center;">Login Page</h1>
        <form action="Username" method="POST">
            Name:<input type="text" id="name" name="name"/>
            <input type="hidden" name="action" value="create" /><br><br>
            <input type="submit" value="Create"/>
        </form>
    </body>
</html>

