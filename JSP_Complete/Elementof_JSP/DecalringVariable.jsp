<%@ page language = "java" contentType = "text/html" %>
<html>
    <head>
        <title>Even Or Odd</title>
    </head>
    <body>
        <% int n = 10 ; %>
        <% if(n%2 == 0){
            %>
            <h2 style="background-color: brown;">Even Number...</h2>
            <%
        }else{
            %>
            <h2 style="display: block;">Odd Number</h2>
            <%
        }
        %>
    </body>
</html>

