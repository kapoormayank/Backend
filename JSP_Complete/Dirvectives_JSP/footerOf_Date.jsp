<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html ;charset=UTF-8" pageEncoding = "UTF-8" %>
  <footer>
        <%
        java.util.Date currentDate = new java.util.Date();
        java.util.Calendar cal = java.util.Calendar.getInstance();
        cal.setTime(currentDate);
        int dayOfWeek = cal.get(java.util.Calendar.DAY_OF_WEEK);
        %>
        <p style="text-align: left;color :cornflowerblue;">Current Date : <%= currentDate %></p>
        <p style="text-align: left;color :cornflowerblue;">Day of week : <%= dayOfWeek %></p>
    </footer>
</body>
</html>
