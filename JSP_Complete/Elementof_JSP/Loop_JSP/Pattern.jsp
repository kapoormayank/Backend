<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<!-- Print Pattern....-->
<html>
    <head></head>
    <body>
        <h1 style="text-align: center;color : darkorange">Print Patterns...</h1>
        <%
        for(int k=1;k<8;k++){
            %>
            <font color = "red" size="<%= k %>">JAVA SERVER PAGE</font>
            <br/>
            <%
        }
        %>
        <h1 style="text-align: center;color : cadetblue">Print Pattern In Reverse Order...</h1>
        <h2 style="text-align: center;color :cornflowerblue">By Using While Loop...</h2>
        <%! int k=7; %>
        <%
        while(k>0){
            %>
            <font color = "red" size = "<%= k %>">JAVA SERVER PAGE</font>
            <br>
            <%
             k--;
        }
        %>
    </body>
</html>
