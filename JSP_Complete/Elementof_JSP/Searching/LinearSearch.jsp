<!DOCTYPE html>
<html>
    <head>
        <title>Linear Search</title>
    </head>
    <body>
        <h1 style="text-align: center;text-decoration:double;">Linear Searching...</h1>
        <h2 style="text-align: left;">Linear Search In An Array</h2>
        <%
        int[] num = {5,6,42,-8,9,0,-4};
        int target = 9,k=0;
        for(int i=0;i<num.length;i++){
            if(target == num[i]){
            k=i;
            }
        }
        %>
        <p style="text-align: left;color :brown">Target Element  <%= target %> At position : <%= k %></p>
    </body>
</html>
