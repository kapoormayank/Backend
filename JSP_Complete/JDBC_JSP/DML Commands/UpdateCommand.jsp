<!-- Update Database Table -->
 <%@ page language ="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ page import ="java.sql.*" %>
 <!DOCTYPE html>
 <html>
    <head>
        <title>
            Update Database Table
        </title>
    </head>
    <body>
        <h1 style="text-align: left;text-decoration: underline;color:mediumpurple">Update Command </h1>
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
            String query="UPDATE product SET price=price+(price/10) WHERE id IN (3,6,9,12)";
            int rowsAffected=statement.executeUpdate(query);
            if(rowsAffected > 0){
                connection.commit();
                out.println("Successfully Data Update In Table");
            }
            statement.close();
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
 </html>

