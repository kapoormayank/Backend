<!-- Person Information Store -->
 <!DOCTYPE html>
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <html>
    <head>
        <meta charset="UTF-8">
        <title>
            Person Data Store
        </title>
    </head>
    <body>
        <h1 style="text-align: left; text-decoration: underline;">Submit From Data</h1>
        <form action="InformationInfo.jsp" method="POST"><br><br>
            <label for="Information">Name:</label>
            <input type="text" id="name" name="name"/><br>
            <label for="Information">Email:</label>
            <input type="text" id="email" name="email"/><br>
            <label for="Information">Age:</label>
            <input type="text" id="age" name="age"/><br>
            <label for="Information">Gender:</label>
            <input type="checkbox" id="Male" name="Male" value="Male"/>Male
            <input type="checkbox" id="Female" name="Female" value="Female"/>Female
            <input type="checkbox" id="Other" name="Other" value="Other"/>Other<br>
            <label for="Information">Country:</label>
            <select>
                <option value="India">India</option>
                <option value="USA">USA</option>
                <option value="Canada">Canada</option>
                <option value="UK">UK</option>
                <option value="Australia">Australia</option>
                <option value="Bangkok">BangKoK</option>
                <option value="Paris">Paris</option>
            </select><br>
            <label for="Information">Comment:</label><br>
            <textarea id="Comment" name="Comment" rows="4" cols="50"/></textarea><br><br>
            <input type="submit" value="Submit">
        </form>
    </body>
 </html>

