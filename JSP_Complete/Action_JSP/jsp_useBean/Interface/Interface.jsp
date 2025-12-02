<!-- Example Of InterFace -->
<!DOCTYPE html>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>
            Encapuslation File Use By Set,Get Method By Getter,Setter Function
        </title>
    </head>
    <body>
        <h1 style="text-align: center;text-decoration:underline;color :blueviolet">Example Of InterFace </h1>
        <jsp:useBean id="Interface" class="test.Interface.Interface" scope="session" />
        <%
        Interface.setName("John Doe");
        Interface.setAge(30);
        %>
        <p style="text-align:left;text-decoration: underline;">Person Information</p>
        <p><%= Interface.getName() %></p>
        <p><%= Interface.getAge() %></p>
    </body>
</html>
