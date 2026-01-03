<!-- Logout Session Code -->
 <%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ page import="javax.servlet.http.HttpSession" %>
 <%@ page import="java.io.IOException" %>
 <!DOCTYPE html>
 <html>
    <head>
        <title>
            Logout page
        </title>
    </head>
    <body>
        <h1 style="text-align:left;text-decoration:underline;color:burlywood">Logout Page</h1>
        <%
        HttpSession mysession=request.getSession(false);
        if(mysession!=null){
            mysession.invalidate();
        }
        %>
        <p>Successfully Logout</p>
        <p><a href="Session.jsp">Again Login</a></p>
    </body>
 </html>
