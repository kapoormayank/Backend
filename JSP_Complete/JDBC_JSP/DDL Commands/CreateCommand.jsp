<!-- Create Database In MySQL -->
<%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
 <html>
    <head>
        <title>
            Create Database IN MySQL
        </title>
    </head>
    <body>
        <!-- <h1 style="text-align: center;text-decoration: solid;">Create Database</h1> -->
        <h1 style="text-align: left;text-decoration: dashed;color:chartreuse">Create Table</h1>
        <!-- final String url="jdbc:mysql://127.0.0.1:3306/?user=root"; -->
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
            String query="CREATE DATABASE grocery";
            String query1="CREATE TABLE product(id INTEGER,name VARCHAR(50),price DECIMAL(5,2),stock int)";
            statement.execute(query);
            out.println("Successfully Create DataBase");
            statement.execute(query1);
            out.println("Successfully Create DataBase Table");
            statement.close();
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
 </html>

