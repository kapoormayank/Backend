<!-- ResultSet Meta Data -->
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ page import ="java.sql.*" %>
 <!DOCTYPE html>
 <html>
    <head>
        <title>
            Result Set Meta Data
        </title>
    </head>
    <body>
        <h1 style="text-align:left;text-decoration:underline;color:burlywood">Result Set Meta Data Print</h1>
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
            Connection connection =DriverManager.getConnection(url,username,password);
            Statement statement=connection.createStatement();
            String query="SELECT * FROM product";
            ResultSet resultSet=statement.executeQuery(query);
            java.sql.ResultSetMetaData resultSetMetaData=resultSet.getMetaData();
            int count=resultSetMetaData.getColumnCount();
            out.println("Columns in Product table : "+"<br>");
            for(int i=1;i<=count;i++){
                out.println("Column :"+i+":"+resultSetMetaData.getColumnName(i)+"("+resultSetMetaData.getColumnTypeName(i)+")"+"<br>");
            }
            statement.close();
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
 </html>
