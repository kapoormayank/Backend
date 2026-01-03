<html>
    <head>
        <title> Today's Date</title>
    </head>
    <body>
        Today's Date : <br/>
    <h2 style="text-align: center;"> 
        <%
            out.println((new java.util.Date()).toLocaleString());
            %>
        </h2>
    </body>
</html>
