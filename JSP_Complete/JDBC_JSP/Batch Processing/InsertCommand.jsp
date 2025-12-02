<!-- For Prepared Statement And Batch Processing --> 
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
    <h1 style="text-align: left;text-decoration: underline;color :chocolate">Insert Data Into Table</h1> 
        <% 
        final String url="jdbc:mysql://127.0.0.1:3306/grocery"; 
        final String username="root"; 
        final String password="9689"; 
        try{ 
            Class.forName("com.mysql.cj.jdbc.Driver"); 
        }catch(ClassNotFoundException e)
        { out.println(e.getMessage()); 
        }
        String query="INSERT INTO product VALUES(?,?,?,?,?,?)";
        try(Connection connection=DriverManager.getConnection(url,username,password); 
        PreparedStatement preparedStatement = connection.prepareStatement(query))
        { 
            connection.setAutoCommit(false); 
            Object[][] str={{32,"Fortune Pure Desi Ghee(Tin)",180.50,60,"2025-10-10","2026-10-10"},
            {21,"Gauva Juice",95.00,90,"2025-09-25","2026-03-25"},
            {33,"Falme Corn Flakes",150.75,120,"2025-10-15","2026-04-15"},
            {24,"Fortune Mustard Oil",280.00,80,"2025-10-3","2026-09-30"},
            {45,"Mother Dairy Curd",40.00,200,"2025-11-02","2025-11-12"},
            {36,"Apple Orange Juice",150.00,100,"2025-11-20","2026-06-20"},
            {30,"Bou0rBon Biscuit",30.00,300,"2025-09-20","2026-02-20"},
            {29,"Milky Paneer Chap(200g)",85.00,90,"2025-11-04","2025-11-15"},
            {38,"Tata Salt",210.50,70,"2025-1-10","2026-10-10"}
        };
        for(Object[] emp:str){
            preparedStatement.setInt(1,(Integer)emp[0]);
            preparedStatement.setString(2,(String)emp[1]);
            preparedStatement.setDouble(3,(Double)emp[2]);
            preparedStatement.setInt(4,(Integer)emp[3]);
            preparedStatement.setString(5,(String)emp[4]);
            preparedStatement.setString(6,(String)emp[5]);
            preparedStatement.addBatch(); 
        }
        int[] rowsAffected=preparedStatement.executeBatch();
        if(rowsAffected.length > 0){
            connection.commit();
            out.println("Succesffuly Data Insered Into Table"); 
        }
        preparedStatement.close(); 
        connection.close();
    }catch(SQLException e){
        e.printStackTrace(); 
    }
    %>
</body>
</html>