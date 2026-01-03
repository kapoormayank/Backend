<!-- Input From User By Server -->
 <!DOCTYPE html>
 <%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <html>
    <head>
        <title>
            Input Form User
        </title>
    </head>
    <body>
        <h1 style="text-align: center;text-decoration: overline;color: cadetblue">Input From User Example</h1>
        <form method="GET" action="InputName.jsp">
            <label for="name">Enter your name : </label>
            <!-- <textarea id="name" name="name" rows="4" cols="50"></textarea> -->
            <input type="text" id="name" name="name">
            <input type="submit" value="Submit">
        </form>
        <%
        String name=request.getParameter("name");
        if(name != null && !name.isEmpty()){%>
            <p> Hello,<%= name %>!</p>
            <%}
            else{%>
            <p>Please Enter your above.</p>
            <%}%>
    </body>
 </html>
