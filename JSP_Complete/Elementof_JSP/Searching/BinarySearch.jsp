<!-- Binary Search  -->
<!DOCTYPE html>
<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8" %>
<html>
    <head>
        <title>
            Binary Search
        </title>
    </head>
    <body>
        <h1 style="text-align: center;">Binary Search...</h1>
        <%! 
        public int binarySearch(int[] num,int target){
            int start = 0;
            int end = num.length-1;
            while(start <= end){
                int mid = (start + end)/2;
                if(target < num[mid]){
                    end = mid-1;
                }else if(target > num[mid]){
                    start = mid+1;
                }
                else{
                    return mid;
                }
            }
            return -1;
        }
        %>
        
        <%!
        public int Desbinarysearch(int[] num1,int target){
            int start = 0;
            int end = num1.length-1;
            while(start <= end){
                int mid = (start + end)/2;
                if(target < num1[mid]){
                    start = mid+1;
                }else if(target > num1[mid]){
                    end = mid-1;
                }else{
                    return mid;
                }
            }
            return -1;
        }
        %>

        <%
        int[] num = {0,8,9,10,56,98};
        int target = 98;
        int result1 = binarySearch(num,target);
        int[] num1 = {98,56,10,9,8,0};
        int result2 = Desbinarysearch(num1,target);
        %>
        <h2 style="text-align: left;">Binary Search In Ascending Order : </h2>
        <% 
        if(result1 != -1){
            out.println("Position Of target element at Ascending Order : "+result1);
        }else{
            out.println("Target element Cann't exist in the array "+target);
        }
    %>
    <h2 style="text-align: left;">Binary Search In Descending Order : </h2>
    <%
    if(result2 != -1){
        out.println("Position Of target element by Descending Order : "+result2);
    }
    else{
        out.println("Target element Cann't exist in the array "+target);
    }
    %>
    </body>
</html>
