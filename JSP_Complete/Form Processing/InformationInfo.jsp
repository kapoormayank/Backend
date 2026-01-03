<!-- Print Person Information In The Form Of Table-->
 <!DOCTYPE html>
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Enumeration" %>
 <html>
    <head>
        <meta charset="UTF-8">
        <title>
            Print Information Of Person
        </title>
    </head>
    <body>
        <h1 style="text-align: left;text-decoration: underline;">Form Data and Request Headers</h1>
        <%
        Enumeration<String> parameterNames = request.getParameterNames();
        %>
        <h2 style="text-align: left;">Submiited Form Data</h2>
        <ul>
            <%
            while(parameterNames.hasMoreElements()){
                String parameterName=parameterNames.nextElement();
                %>
                <li><strong><%= parameterName %>: </strong><%= request.getParameter(parameterName) %>
                </li>
                <%
            }
            %>
        </ul>
    </body>
 </html>
