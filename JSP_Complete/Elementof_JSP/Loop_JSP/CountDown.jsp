<!DOCTYPE html>
<!@ page language = "java" contentType = "text/html" %>
<html>
    <head>
    </head>
    <body>
        <h2 style= "text-align : center;color : red;">Count Down ...</h2>
        <!-- Count Down -->
        <%
        for(int i=10;i>=1;i--){
            %>
            <p><%= i %></p>
            <%
        }
        %>
    </body>
</html>
