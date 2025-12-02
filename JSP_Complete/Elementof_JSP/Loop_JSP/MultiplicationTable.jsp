<!DOCTYPE html>
<html>
    <head>
        <title>Multiplication of Table </title>
    </head>
    <body>
        <ul>
        <% int x = 5; %>
        <% for(int i=1;i<=10;i++){
            %>
            <li><%= x +"*"+ i +"="+ x*i%></li>
            <%
        }
        %>
    </ul>
    </body>
</html>

