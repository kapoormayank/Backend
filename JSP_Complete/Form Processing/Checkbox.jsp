<!-- Use Input Type checkbox -->
 <!DOCTYPE html>
 <%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
 <html>
    <head>
        <title>
            Use Of CheckedBox
        </title>
    </head>
    <body>
        <h1 style="text-align: center;text-decoration: underline;text-transform: capitalize;">CheckedBox Example</h1>
        <form action="CheckInfo.jsp" method="POST" target="_blank">
                <input type="checkbox" name="Math" checked="checked"/>Math
                <input type="checkbox" name="Physic" />Physic
                <input type="checkbox" name="Chemitry" checked="checked"/>chemistry<br><br>
                <input type="submit" value="Submit"/>
        </form>
    </body>
 </html>

