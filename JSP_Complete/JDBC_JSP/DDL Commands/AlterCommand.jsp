<!-- Alter Command Perform All Operation like RENAME, MODIFY COLUMN,ADD CONSTRAINT, ADD COLUMN,DROP COLUMN, AUTO_INCREMENT, ALTER  ALTER-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Alter command Perform
        </title>
    </head>
    <body>
        <h1 style="text-align: left;text-decoration: underline;color:burlywood">Alter Command</h1>
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
            String query="ALTER TABLE product MODIFY stock int NOT NULL";
            String query1="ALTER TABLE product ADD CONSTRAINT PRIMARY KEY(id)";
            String query2="ALTER TABLE product ADD COLUMN manfacturing_date DATE";
            String query3="ALTER TABLE product ADD COLUMN expiry_date DATE NOT NULL";
            statement.executeUpdate(query3);
            out.println("Successfully Alter Command Performed");
            statement.close();
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
    </html>
    
