<!-- Inser Data Into Table Of DataBase grocery -->
<%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Insert Data Into Table
        </title>
    </head>
    <body>
        <h1 style="text-align: left;text-decoration: underline;color:coral">Insert Data Into Database</h1>
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
            String query="INSERT INTO product VALUES"+
            "(1,'Kisan Jam',58.90,25,'2025-12-10','2026-2-12'),"+
            "(2,'Brittany Bread',25.40,150,'2025-11-5','2025-11-10'),"+
            "(6,'Amul Dudh',69.20,220,'2025-11-3','2025-11-6'),"+
            "(10,'Amul Butter',65.90,25,'2025-11-10','2026-5-11'),"+
            "(17,'Snaker Chocolate',5.00,100,'2025-12-30','2026-11-10'),"+
            "(5,'Eggs',7.50,250,'2025-11-5','2025-11-6'),"+
            "(7,'Ketchup',30,50,'2025-11-10','2026-10-4'),"+
            "(3,'Pine Apple Juice',100.2,100,'2025-11-5','2026-10-1'),"+
            "(11,'Snaker Biscuit',5,100,'2025-11-10','2026-12-1'),"+
            "(4,'Tiger Crunch',5,200,'2025-11-10','2026-11-10')";
            int rowsAffected = statement.executeUpdate(query);
            if(rowsAffected > 0){
                out.println("Successfully Inserted Data Into Table");
            }
            statement.close();
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
</html>
