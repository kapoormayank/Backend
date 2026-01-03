<!-- Multi User Controller Logout Page -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="MVC.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Logout Page By MVC
        </title>
        <style>
            body{
                font-family: Arial, Helvetica, sans-serif;
                background-color: cornflowerblue;
            }
        </style>
    </head>
    <body>
        <h1 style="text-align: center;">User List</h1>
        <ul>
            <%
            for(User user:(List<User>)request.getAttribute("users")){
                %>
                <li>
                    <%= user.getName() %>
                    <a href="Username?action=delete&id=<%= user.getId() %>">Delete</a>
                </li>
                <%
            }
            %>
        </ul>
        <h2></h2>
        <form action="Username" method="POST">
            Name:<input type="text" id="name" name="name"/>
            <input type="hidden" name="action" value="create"/><br><br>
            <input type="submit" value="Create"/>
        </form>
    </body>
</html>

