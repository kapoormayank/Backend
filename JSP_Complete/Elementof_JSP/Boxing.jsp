<!-- Use Of Boxing Concept -->
<!DOCTYPE html>
<html>
    <head></head>
    <body>
        
        <!-- AutoBoxing -->
        <h1 style="text-align: center;color :cadetblue">Autoboxing (Primitive DataTypes Convert Into Wrapped Object)</h1>
        <%
        int a=50;
        Integer b=a;
        String st = "Mayank Roy Kapoor";
        String s = st;
        %>
        <p>Primitive DataType : <%= a %></p>
        <p>Wrapped Integer Object : <%= b %></p>
        <p>String DataType : <%= st %></p>
        <p>Wrapped String Object : <%= s %></p>
        <br><br>

        <!-- UnBoxing -->
        <!-- Wrapped Object Carry The Value By Wrapped Class -->
        <h1 style="text-align: center;color :cadetblue">Unboxing (Wrapped Object Convert Into Primitive DataTypes)</h1>
        <%
        Integer c = new Integer(150);
        int t = c;
        String s1 = new String("Mayank Roy Kapoor");
        String sc = s1;
        %>
        <p>Wrapped Integer Class : <%= c %></p>
        <p>Primitive Int DataType : <%= t %></p>
        <p>Wrapped String Class : <%= s1 %></p>
        <p>Primitive String DataType : <%= sc %></p>
    </body>
</html>

