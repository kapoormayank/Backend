<!-- Data Show After Login -->
 <%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ include file="Session.jsp" %>
 <%@ page import="javax.servlet.http.HttpSession" %>
 <!DOCTYPE html>
 <html>
    <head>
        <title>
            data Show After Login The User
        </title>
    </head>
    <body>
        <%
        HttpSession session=request.getSession(false);
        String userName=(session!=null)?(String)session.getParameter("userName"):null;
        if(userName == null){
            response.sendRedirect("Session.jsp");
        }
        %>
        <h1 style="text-align:center;text-decoration:underline;color:burlywood">Welcome To My Restaurant <%= userName %></h1>
        <form action="CheckSession.jsp" method="POST">
            <label for="foodItem">Burger</label>
            <input type="checkbox" id="Burger" name="foodItem" value="Burger">
            <label for="foodItem">Pizza</label>
            <input type="checkbox" id="Pizza" name="foodItem" value="Pizza">
            <label for="foodItem">Chumeny</label>
            <input type="checkbox" id="Chumeny" name="foodItem" value="Chumeny">
            <label for="foodItem">Sandwitch</label>
            <input type="checkbox" id="Sandwitch" name="foodItem" value="Sandwitch">
            <label for="foodItem">Coke</label>
            <input type="checkbox" id="Coke" name="foodItem" value="Coke">
            <label for="foodItem">Pepsi</label>
            <input type="checkbox" id="Pepsi" name="foodItem" value="Pepsi">
            <label for="foodItem">Limca</label>
            <input type="checkbox" id="Limca" name="foodItem" value="Limca">
            <input type="submit" value="Submit">
        </form>
        <p><a href="Logout.jsp">Logout</a></p>
    </body>
 </html>