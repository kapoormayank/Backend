<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html" %>
<html>
    <head></head>
    <body>
        <!-- Simple use the java code -->
         <h1 style="text-align: center;color :blueviolet">Without using Switch Statement Date,Day </h1>
        <%
        java.util.Date currentdate = new java.util.Date();
        java.util.Calendar cals = java.util.Calendar.getInstance();
        cals.setTime(currentdate);
        int dayofweek = cals.get(java.util.Calendar.DAY_OF_WEEK);
        boolean isWeekend = (dayofweek==java.util.Calendar.SATURDAY || dayofweek==java.util.Calendar.SUNDAY);
        %>
        <p>Current Date : <%= currentdate %></p>
        <p>Day of week<%= dayofweek %></p>
        <p style="text-align: left;color :brown"><strong><%= (isWeekend ?"It is Weekend":"It's not a Weekend") %></strong></p>
        
        <!-- By Switch Statment Check Today's Weekend Or Not -->
        <h1 style="text-align: center;color :coral">Switch Identify the Today's Date,Day...</h1>
        <%
        java.util.Date currentDate = new java.util.Date();
        java.util.Calendar cal = java.util.Calendar.getInstance();
        cal.setTime(currentDate);
        String dayName = "";
        switch (dayofweek){
                case 1:
                dayName="Sunday";
                break;
                case 2:
                dayName="Monday";
                break;
                case 3:
                dayName="Tuesday";
                break;
                case 4:
                dayName="Wednesday";
                break;
                case 5:
                dayName="Thursday";
                break;
                case 6:
                dayName="Friday";
                break;
                case 7:
                dayName="Saturday";
                break;
            }
            %>
            <%
            if(dayName == "Saturday" || dayName == "Sunday"){
                out.println("It's a holiday today! Enjoy your "+dayName);
            }else{
                out.println("Day of the week : "+dayName);
            }
        %>        
    </body>
</html>
