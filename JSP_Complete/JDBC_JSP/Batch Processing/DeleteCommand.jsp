<!-- Use For Batch Processing -->
 <%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ page import="java.sql.*" %>
 <!DOCTYPE html>
 <html>
    <head>
        <title>
            Delete  Command For Batch Processing
        </title>
    </head>
    <body>
        <h1 style="text-align:left;text-decoration:underline;color:navy">Delete Command</h1>
        <%
        final String url="jdbc:mysql://127.0.0.1:3306/grocery";
        final String username="root";
        final String password="9689";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(ClassNotFoundException e){
            out.println(e.getMessage());
        }
        String query="DELETE FROM product WHERE name=?";
        try(Connection connection=DriverManager.getConnection(url,username,password);
        PreparedStatement preparedStatement=connection.prepareStatement(query)){
            connection.setAutoCommit(false);
            String[] str={"Eggs","Amul Dudh","Brittany Bread"};
            for(String emp:str){
                preparedStatement.setString(1,emp);
                preparedStatement.addBatch();
            }
            try{
            int[] rowsAffected=preparedStatement.executeBatch();
            if(rowsAffected.length > 0){
                connection.commit();
                out.println("Successfully Data Delete From Table");
            }
            preparedStatement.close();
            connection.close();
        }catch(SQLException e){
            connection.rollback();
            e.printStackTrace();
        }
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
 </html>

