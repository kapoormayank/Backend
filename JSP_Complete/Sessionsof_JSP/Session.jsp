<!-- Session JSP code -->
 <%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
        <title> 
            Session Example
        </title>
    </head>
    <body>
        <h1 style="text-align: left;text-decoration: underline;color:cornflowerblue">Session Example</h1>
        <%
        HttpSession mysession=request.getSession(true);
        String userName=(String)mysession.getAttribute("userName");
        if(userName==null){
            userName=request.getParameter("name");
            mysession.setAttribute("userName",userName);
        }
        %>
        <h1>Session Example</h1>
        <%
        if(userName!=null){
            response.sendRedirect("DataSession.jsp");
        }
        else{%>
            <form action="Session.jsp" method="POST">
        <label for="name">Enter Your Name :</label>
        <input type="text" id="name" name="name" required>
        <input type="submit" value="Login">
        </form>
        <%}
        %>
    </body>
</html>
