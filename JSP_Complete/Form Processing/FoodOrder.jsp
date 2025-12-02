<!-- Food Order -->
 <!DOCTYPE html>
 <%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
 <html>
    <head>
        <meta charset="UTF-8">
        <title>
            Order The Food
        </title>
    </head>
    <body>
        <h1 style="text-align: center;text-decoration: underline;color:cadetblue">Welcome to Our Family Restaurant </h1>
        <form action="foodinfo.jsp" method="post">
            <label for="Order"><h2 style="text-align: left;">Food Order Form</h2><br>
                Burger<input type="checkbox" id="Burger" name="Order" value="Burger" /><br>
                Pasta<input type="checkbox" id="Pasta" name="Order" value="Pasta" /><br>
                French Fries<input type="checkbox" id="French Fries" name="Order" value="French Fries" /><br>
                Coke<input type="checkbox" id="Coke" name="Order" value="Coke" /><br>
                <input type="submit" value="Place Order"/>
            </label>    
        </form>
    </body>
 </html>

