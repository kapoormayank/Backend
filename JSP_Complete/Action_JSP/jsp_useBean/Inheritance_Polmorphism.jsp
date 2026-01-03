<!-- Inheritance Polmorprism By Java Beans -->
 <!DOCTYPE html>
 <%@ page language = "java" contentType="text/html ; charset=UTF-8" pageEncoding = "UTF-8" %>
 <html>
    <head>
        <title>
            Inheritance And Polmorphism
        </title>
    </head>
    <body>
        <h1 style="text-align:center; text-decoration: solid; color:cornflowerblue;">Inheritance And PolyMorPhism</h1>
        <jsp:useBean id = "JSP" class="test.Inheritance_Polymorphism.Car"/>
        <jsp:setProperty name="JSP" property="brand" value="Toyota"/>
        <jsp:setProperty name="JSP" property="carNumber" value="KA-01-1234" />
        <p style="text-align: left;">Ouput Of Inheritance : </p>
        Sound of Car : <%= JSP.Sound() %>
        Car Number of Car : <%= JSP.details() %>
        <span>Brand of Car : </span>
        <span>CarNumber of Car : </span>
        <jsp:getProperty name="JSP" property="brand"/>
        <jsp:getProperty name="JSP" property="carNumber"/>
        <br>
        <p style="text-align: left;">Ouput Of Polymorphism : </p>
        Sound of Vechicle : <%= JSP.Sound() %>
    </body>
 </html>
