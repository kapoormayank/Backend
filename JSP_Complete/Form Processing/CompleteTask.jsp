<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Task Complete
        </title>
    </head>
    <body>
        <h1 style="text-align: center;text-decoration: underline;">Your Information</h1>
        <br>
        <table border="2px; width=4px">
            <tr>
                <tr>
                    <th>Field</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><%= request.getParameter("name") %></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><%= request.getParameter("gender") %></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><%= request.getParameter("age") %></td>
                </tr>
                <tr>
                    <td>Education:</td>
                    <td><%= request.getParameter("education") %></td>
                </tr>
        </table>
    </body>
</html>
