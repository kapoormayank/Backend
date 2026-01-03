<!-- For Prepared Statement -->
<%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Delete Command
        </title>
    </head>
    <body>
        <h1 style="text-align:left;text-decoration: underline;color:burlywood">Delete Command</h1>
        <%
        final String url="jdbc:mysql://127.0.0.1:3306/grocery";
        final String username="root";
        final String password="9689";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(ClassNotFoundException e){
            out.println(e.getMessage());
        }
        String query="DELETE FROM product WHERE id=?";
        try(Connection connection=DriverManager.getConnection(url,username,password);
        PreparedStatement preparedStatement=connection.prepareStatement(query)){
            connection.setAutoCommit(false);
            preparedStatement.setInt(1,3);
            int rowsAffected=preparedStatement.executeUpdate();
            if(rowsAffected > 0){
                connection.commit();
                out.println("Successfully Update The Table");
            }else{
                connection.rollback();
                out.println("No Data In The Table");
            }
            preparedStatement.close();
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
</html>

