<!DOCTYPE html>
<html>
    <head></head>
    <body>
        <!-- Wrapped Classes -->
        <h1 style="text-align: center;color :darkgoldenrod">Wrapped Classes...</h1>
        <%
        Byte by = new Byte((byte)127);
        Short sh = new Short((short)23454);
        Integer n = new Integer(989);
        Double dub = new Double(34.78);
        Float fl = new Float(67.9f);
        Long ln = new Long(6547870478560L);
        String str = new String("Mayank Roy Kapoor");
        Character ch = new Character('A');
        Boolean bol = new Boolean(true);
        %>
        <p>Byte Wrapped Class : <%= by %></p>
        <p>Short Wrapped Class : <%= sh %></p>
        <p>Integer Wrapped Class : <%= n %></p>
        <p>Double Wrapped Class : <%= dub %></p>
        <p>Float Wrapped Class : <%= fl %></p>
        <p>String Wrapped Class : <%= str %></p>
        <p>Character Wrapped Class : <%= ch %></p>
        <p>Boolean Wrapped Class : <%= bol %></p>
    </body>
</html>
