<%-- 
    Document   : index
     Author     : NOUF 
--%>
<%@ page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Managment System</title>
<style>
body {background-color: powderblue;}
header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}
/* Clear floats after the columns */
div{
  border-radius: 5px;
   padding: 20px;
    padding-left: 630px; 
   font-size: 20px;
  color: white;
  }
  h2{
   color: black;    
  }
  footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}
</style> 
    </head>
    
    <body>
         <header>
     <h1>Event Managment System</h1>
    <p>Main Page</p>
        </header>
    <div> 
     <h1> <% out.print("1- <a href='login.jsp'> Login </a> \t \t");   
     out.print("\t 2- <a href='signup.jsp'> SignUp </a> "); %></h1>
           
    </div>
        <footer>
  <p>Group1</p>
</footer>

    </body>

    
</html>
