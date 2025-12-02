<!DOCTYPE html>
<%@ page language = "java" contentType="text/html ; charset = UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>
            Ceil And Floor
        </title>
    </head>
    <body>
        <h1 style="text-align: center;color :cadetblue">Ceil And Floor Example</h1>
        <!-- For Ascending Order -->
        <%!
        public int ascOrder_ceil(int[] nums,int target){
            int start=0;
            int end=nums.length-1;
            while(start <= end){
                int mid = (start+end)/2;
                if(target < nums[mid]){
                    end = mid -1;
                }else if(target > nums[mid]){
                    start = mid+1;
                }else{
                    return mid;
                }
            }
            return nums[start];
        }

        public int ascOrder_floor(int[] nums,int target){
            int start=0;
            int end=nums.length-1;
            while(start <= end){
                int mid = (start+end)/2;
                if(target < nums[mid]){
                    end = mid -1;
                }else if(target > nums[mid]){
                    start = mid+1;
                }else{
                    return mid;
                }
            }
            return nums[end];
        }
        %>

        <!-- For Descending Order -->
        <%!
        public int DesOrderceil(int[] num1,int target){
            int start=0;
            int end=num1.length-1;
            while(start <= end){
                int mid = (start+end)/2;
                if(target > num1[mid]){
                    start = mid+1;
                }else if(target < num1[mid]){
                    end = mid -1;
                }else{
                    return mid;
                }
            }
            return -1;
        }
        public int DesOrderfloor(int[] num1,int target){
            int start=0;
            int end=num1.length-1;
            while(start <= end){
                int mid = (start+end)/2;
                if(target < num1[mid]){
                    start = mid+1;
                }else if(target > num1[mid]){
                    end = mid-1;
                }else{
                    return mid;
                }
            }
            return num1[end];
        }
        %>
        <%
        int target = 79;
        int[] nums = {0,4,8,10,39,50,78,809};
        int result1 = ascOrder_floor(nums,target);
        int result2 = ascOrder_ceil(nums,target);
        int[] num1= {809,78,50,39,10,8,4,0};
        int results1 = DesOrderceil(num1,target);
        int results2 = DesOrderfloor(num1,target);
        %>
        <!-- Ascending Order Print Output -->
        <p style="text-align : left; text-decoration: overline;">Floor Element Of target Element is : <%= result1 %></p>
        <p style="text-align : left; text-decoration: overline;">Ceil Element Of target Element is : <%= result2 %></p>
        <!-- Decending Order Print Output -->
        <p style="text-align : left; text-decoration: overline;">Floor Element Of target Element is : <%= results1 %></p>
        <p style="text-align : left; text-decoration: overline;">Ceil Element Of target Element is : <%= results2 %></p>
    </body>
</html>
