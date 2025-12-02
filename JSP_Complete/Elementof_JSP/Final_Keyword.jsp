<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head></head>
    <body>
        <!-- USE OF FINAL KEYWORD   -->
        <h1 style="text-align: center;color: rgb(13, 124, 221);">Use of Final Keyword...</h1>
        <%
        final String name = "Mayank Roy Kapoor";
        final int x = 5;
        %>
        <p style="text-align: left;color :blueviolet">Name of student : <%= name %></p>
        <p style="text-align: left;color :blueviolet">Marks of Student : <%= x %></p>
    </body>
</html>
