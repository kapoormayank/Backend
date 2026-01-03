<!-- Use <jsp_usebean > -->
<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html ; charset=UTF-8" pageEncoding = "UTF-8" %>
<html>
    <head>
        <title>
            Name Print 
        </title>
    </head>
    <body>
        <h1 style="text-align : center; text-decoration: dashed;color :blueviolet">USE JAVA BEAN</h1>
        <center>
            <jsp:useBean id="JSP"  class="test.Encapsulation.Encapsulation"/>
            <jsp:setProperty name="JSP" property = "name" value="Hello I am Mayank Roy Kapoor" />
            <p>Output By Using Getter, Setter Method</p>
            <jsp:getProperty name="JSP" property="name"/>
        </center>
    </body>
</html>
