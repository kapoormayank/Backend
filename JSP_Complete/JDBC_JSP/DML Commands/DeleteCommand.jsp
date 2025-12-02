<!-- Delete Command Perform Its work in the Table-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Delte Command Performed
        </title>
    </head>
    <body>
        <h1 style="text-align: left;text-decoration: underline;color:dodgerblue">Delete Command Perform</h1>
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
            connection.setAutoCommit(false);
            Statement statement=connection.createStatement();
            String query="DELETE FROM product";
            int rowsAffected=statement.executeUpdate(query);
            if(rowsAffected > 0){
                connection.commit();
                out.println("Successfully Delete Data From Table");
            }
            statement.close();
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
</html>
