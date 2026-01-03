<!-- Post Method -->
<!DOCTYPE html>
<%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>
            Post Method Example
        </title>
    </head>
    <body>
        <form method="POST" action="PostMethod.jsp">
            <label for="name">Enter your Name : </label>
            <input type ="text" id="name" name="name">
            <br>
            <label for="age">Your Age : </label>
            <input type="text" id="age" name="age">
            <br>
            <input type="submit" value="Submit">
            <%
            String name=request.getParameter("name");
            String age=request.getParameter("age");
            if(name != null && !name.isEmpty() && age!=null && !age.isEmpty()){
                %>
                <p>Hello,<%= name %>!You are <%= age %> old.</p>
                <%
            }else{
                %>
                <p>Please fill your above information</p>
                <%
            }
            %>
        </form>
    </body>
</html>
