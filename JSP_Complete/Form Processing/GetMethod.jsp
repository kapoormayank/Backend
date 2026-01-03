<!-- Get Method -->
 <!DOCTYPE html>
 <%@ page language = "java" contentType = "text/html ; charst=UTF-8" pageEncoding = "UTF-8" %>
 <html>
    <head>
        <title>
            Get Method Example
        </title>
    </head>
    <body>
        <form metod="GET" action="GetMethod.jsp">
            <br>
            <lable for="name">Enter your name : </lable>
            <input type="text" id="name" name="name">
            <br>
            <lable for="age">Your Age : </lable>
            <input type="text"id="age" name="age">
            <br>
            <input type="submit" value="Submit">
            <%
            String name = request.getParameter("name");
            String age = request.getParameter("age");
            if(name != null && !name.isEmpty() && age != null && !age.isEmpty()){
                %>
                <p>Hello, <%= name %></p>
                <p>Your <%= age %> old</p>
                <%
            }
            else{
                %>
                <p>Please enter your above information</p>
                <%
            }
            %>
        </form>
    </body>
 </html>

