<!-- Parameter Meta Data -->
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ page import ="java.sql.*" %>
 <!DOCTYPE html>
 <html>
    <head>
        <title>
            Parameter Meta Data 
        </title>
    </head>
    <body>
        <h1 style="text-align: left; text-decoration:underline;color:royalblue">Parameter Meta Data Print</h1>
        <%
        final String url="jdbc:mysql://127.0.0.1:3306/grocery";
        final String username="root";
        final String password="9689";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(ClassNotFoundException e){
            out.println(e.getMessage());
        }
        String query="INSERT INTO product VALUES(?,?,?,?,?,?)";
        try(Connection connection=DriverManager.getConnection(url,username,password);
        PreparedStatement preparedStatement=connection.prepareStatement(query)){
            java.sql.ParameterMetaData parameterMetaData=preparedStatement.getParameterMetaData();
            int count = parameterMetaData.getParameterCount();
            out.println("Number of Paramter In Product Table : "+count);
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
 </html>
