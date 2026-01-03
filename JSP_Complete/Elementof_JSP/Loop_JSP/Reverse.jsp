<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head>
        <title>
            Given Number Print Into Reverse form
        </title>
    </head>
    <body>
        <h2 style="text-rendering: auto;">Reverse order</h2>
        <%  int x = 12345;
        int r=0,sum=0;
        for(int i=x;i!=0;i=i/10){
            r= i%10;
            sum=sum*10+r;
        }
        %>
        <pstyle="text-emphasis-style: calc();">Given Digit Number Print Into Reverse Order : <%= sum %></p>
    </body>
</html>

