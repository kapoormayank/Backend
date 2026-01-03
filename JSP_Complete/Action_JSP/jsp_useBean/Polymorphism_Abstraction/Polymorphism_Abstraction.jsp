<!-- Polymorprism Example -->
 <!DOCTYPE html>
 <%@ page language = "java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
 <html>
    <head>
        <title>
            Rectangle Class 
        </title>
    </head>
    <body>
        <h1 style="text-align:center; color:chocolate;text-decoration:underline;">Polymorprism Example By Abstraction Class</h1>
            <jsp:useBean id="JSP" class="test.Abstraction.Rectangle"/>
            <jsp:setProperty name="JSP" property="length" value="4.6"/>
            <jsp:setProperty name="JSP" property="width" value="6.7"/>
            <p style="text-align: left;color:cadetblue;text-decoration: underline;">Output Of Polymorprism : </p>
            <span>Length Of Rectangle : </span>
            <jsp:getProperty name="JSP" property = "length" />
            <br>
            <span>Width Of Rectangle : </span>
            <jsp:getProperty name="JSP" property = "width" />
            <br>
            Area: <%= JSP.area() %>
    </body>
 </html>
