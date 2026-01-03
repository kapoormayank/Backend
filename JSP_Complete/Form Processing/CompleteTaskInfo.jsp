<!-- Task By User Input -->
<%@ page language="java" contentType="text/html ; charset=UTF-8" pageEncoding="UTF-8" %>
 <!DOCTYPE html>
 <html>
    <head>
        <title>
            Task Print
        </title>
    </head>
    <body>
        <h1 style="text-align:center;text-decoration: dashed;color :burlywood">Task Start to Execute</h1>
        <form action="CompleteTask.jsp" method="POST">
            <label for="name">Enter your name: </label>
            <input type="text" id="name" name="name">
            <br><br>
            <label for="gender">Gender: </label>
            <input type="radio" id="Male" name="gender" value="Male">Male
            <input type="radio" id="Female" name="gender" value="Female">Female
            <input type="radio" id="Other" name="gender" value="Other">Other
            <br><br>
            <label for="age">Your age: </label>
            <input type="text" id="age" name="age">
            <br><br>
            <label for="education">Education: </label>
            <select id="education" name="education">
                <option value="Undergraduate">Undergraduate</option>
                <option value="Postgraduate">Postgraduate</option>
                <option value="Student">Student</option>
                <option value="Graduate student">Graduate student</option>
            </select>
            <br><br>
            <input type="submit" value="Submit">
        </form>
        <%
        String name=request.getParameter("name");
        String gender=request.getParameter("gender");
        String education=request.getParameter("education");
        String age=request.getParameter("age");
        if((name == null || name.isEmpty())&&
        (gender==null || gender.isEmpty())&&
        (age==null || age.isEmpty())&&
        (education==null || education.isEmpty()))
        {
            %>
                        <p style="text-align: left;color :brown">Please Fill the above information...</p>
            <%
        }
        %>
    </body>
 </html>

