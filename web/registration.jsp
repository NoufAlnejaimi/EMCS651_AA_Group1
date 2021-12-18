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
        <title> Registration</title>
 <style>
body {
background-color: powderblue;
} 
header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}div{
  border-radius: 5px;
   padding: 20px;
    padding-left: 630px; 
   font-size: 35px;
  color: white;
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
     <h1> Registration</h1>
         </header> 
        <% 
            String Username = request.getParameter("Username");
            String Password =  request.getParameter("Password"); 
           String FullName = request.getParameter("Fullname");
            String PhoneNumber = request.getParameter("PhoneNumber");
            String NationalID = request.getParameter("NationalID");
            String Email = request.getParameter("Email");
            String Role = "2" ;
            ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase();
            boolean isAdded = conn.add_user(Username,Password,FullName,PhoneNumber,NationalID,Email,Role);
            if(isAdded == true)
                out.print("Data is successfully inserted!");
            else
                out.print("Error");
            %> 
            <footer>
  <p>Group1</p>
</footer>

    </body>

    
</html>
