<!-- Drop Table From grocery DataBase -->
 <!-- Drop Database -->
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ page import="java.sql.*" %>
 <!DOCTYPE html>
 <html>
    <head>
        <title>
            Drop Table From Database
        </title>
    </head>
    <body>
        <h1 style="text-align: left;text-decoration: dashed;color:crimson">Drop The Table From Database</h1>
        <h1 style="text-align: left;text-decoration: dashed;color:crimson">Drop The Database</h1>
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
            String query="DROP TABLE product";
            String query1="DROP DATABASE grocery";
            statement.execute(query);
            statement.execute(query1);
            out.println("Successfully DROP Table");
            out.println("Successfully DROP Database");
            statement.close();
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
</html>



