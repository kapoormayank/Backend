<!-- Truncate Command Perform -->
 <%@ page language="java" contentType="text/html ;charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Turncate Command Perform
        </title>
    </head>
    <body>
        <h1 style="text-align: left;text-decoration: underline;color:cornflowerblue">Truncate Command Perform</h1>
        <%
        final String url="jdbc:mysql://127.0.0.1:3306/grocery";
        final String username="root";
        final String password="9689";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(ClassNotFoundException e){
            out.println(e.getMessage());
        }
        try{
            Connection connection=DriverManager.getConnection(url,username,password);
            Statement statement=connection.createStatement();
            String query="TRUNCATE TABLE product";
            statement.executeUpdate(query);
            out.println("Successfully Truncate command Performed");
            statement.close();
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
</html>

