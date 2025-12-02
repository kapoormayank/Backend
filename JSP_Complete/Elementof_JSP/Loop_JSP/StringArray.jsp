<!-- Names are print by using an array-->
<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head>
    </head>
    <body>
        <h1 style = "text-align: center;color :blue">Name List Example...</h1>
        <ul>
        <%
        String[] str = {"shiv","Nancy","Rakesh","Pradeep","Astha","Gurmeet"};
            for(String nums : str){
                %>
                <li><%= nums %></li>
                <%
            }
            %>
        </ul>
    </body>
</html>
