<!-- Driver Meta Data -->
 <%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ page import="java.sql.*" %>
 <!DOCTYPE html>
 <html>
    <head>
        <title>
            Driver Mets Data
        </title>
    </head>
    <body>
        <h1 style="text-align:left;text-decoration:underline;color:rebeccapurple;">Driver Meta Data Print</h1>
        <%
        final String url="jdbc:mysql://127.0.0.1:3306/grocery";
        final String username="root";
        final String password="9689";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(ClassNotFoundException e){
            out.println(e.getMessage());
        }try{
            Connection connection=DriverManager.getConnection(url,username,password);
            DatabaseMetaData dataBaseMeta=connection.getMetaData();
            out.println("Driver Product Name : "+dataBaseMeta.getDriverName()+"<br>");
            out.println("Driver Version Name : "+dataBaseMeta.getDriverVersion()+"<br>");
            out.println("DataBase Product Name : "+dataBaseMeta.getDatabaseProductName()+"<br>");
            out.println("DataBase Product Version : "+dataBaseMeta.getDatabaseProductVersion()+"<br>");
            out.println("User Name : "+dataBaseMeta.getUserName()+"<br>");
            ResultSet resultSet=dataBaseMeta.getTables(null,null,"%",new String[]{"TABLE"});
            out.println("List Of Tables In MySQL : ");
            while(resultSet.next()){
                out.println(resultSet.getString("TABLE_NAME")+"| ");
            }
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
 </html>

