<!DOCTYPE html>
<html>
    <head>
        <title>Use of Parse Int</title>
    </head>
    <body>
        <h1 style="text-align: center;">Use of Parse Int</h1>
        <%
        String s = "12.5";
        out.println(s+3);
        %>
        <br><br>
        <%
        float x = 9.3f;
        float y = Float.parseFloat(s);
        out.println(x+y);
        %>
    </body>
</html>
