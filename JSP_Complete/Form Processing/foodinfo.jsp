<!-- Import food Order JSP File -->
 <!DOCTYPE html>
 <%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
 <html>
    <head>
        <title>
            Food Order Information
        </title>
    </head>
    <body>
        <h1 style="text-align: left;">Order Summary </h1>
        <%
        String[] str = request.getParameterValues("Order");
        if(str != null && str.length > 0){
            %>
            <ul>
                <p>Your Order is as follows:</p>
                <%
                for(String num:str){
                    %>
                    <li><%= num %></li>
                    <br>
                    <%
            }
        }
        else{
            %>
        </ul>
            <p>You have not selected any items.</p>
            <%
        }
        %>
    </body>
 </html>

