<!-- Print The Command -->
 <%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ page import ="java.sql.*" %>
 <!DOCTYPE html>
 <html>
    <head>
        <title>
            Print The MySQL Table Data
        </title>
    </head>
    <body>
        <%
        final String url="jdbc:mysql://127.0.0.1:3306/grocery";
        final String username="root";
        final String password="9689";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(ClassNotFoundException e){
            out.println(e.getMessage());
        }
        String query="SELECT * FROM product WHERE name IN (?,?,?,?)";
        try(Connection connection=DriverManager.getConnection(url,username,password);
        PreparedStatement preparedStatement=connection.prepareStatement(query)){
            preparedStatement.setString(1,(String)"kisan jam");
            preparedStatement.setString(2,(String)"Ketchup");
            preparedStatement.setString(3,(String)"Pine Apple Juice");
            preparedStatement.setString(4,(String)"Snaker Biscuit");
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                int id=resultSet.getInt("id");
                String name=resultSet.getString("name");
                double price=resultSet.getDouble("price");
                int quantity=resultSet.getInt("stock");
                String mfd=resultSet.getString("manfacturing_date");
                String exp=resultSet.getString("expiry_date");
                out.println("\t|"+id+"\t|"+name+"\t|"+price+"\t|"+quantity+"\t|"+mfd+"\t|"+exp);
                %>
                <br>
                <%
            }
            preparedStatement.close();
            connection.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
    </body>
 </html>

