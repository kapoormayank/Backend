<!-- Abstraction Class -->
<!DOCTYPE html>
<%@ page language="java" contentType="text/html ; charset=UTf-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>
            Abstraction Class
        </title>
    </head>
    <body>
        <h1 style="text-align: center;color: chocolate;">Example Of Abstraction Class</h1>
            <jsp:useBean id="JSP" class="test.Abstraction.Circle" />
            <jsp:setProperty name="JSP" property="radius" value="5.4"/>
            <p style="text-align: left;">Radius of Rectangle : </p>
            <span>Radius Of Circle : </span>
            <jsp:getProperty name="JSP" property="radius"/>
            <br>
            Area : <%= JSP.area() %>
    </body>
</html>
