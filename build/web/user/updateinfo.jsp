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
        <title> Update Information</title>
 <style>
body {
background-color: powderblue;
text-align: center;

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
   padding: 10px;
  text-align: center;
  align: center;
  } 
  footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
} 
form {
    display: inline-block;
} 
</style> 
    </head>
    
    <body>
         <header>
            <h1>Event Management System</h1> 
            <h3> <a href='home_user.jsp'>Home</a>   <a href='allevents.jsp'>All Events</a>  <a href='../login.jsp'>Logout</a>  </h3>
            <p>User Home Page , Hi : <% out.print(session.getAttribute("username")); %></p> 
        </header>
        <%  
            String PhoneNumber = request.getParameter("PhoneNumber");
            int user_id = (int)session.getAttribute("user_id");
            int successful = 1 ; 
            if (!PhoneNumber.matches("^[0-9]{10,}$")){
             %><h1> <%  out.print("Phone Number have to be 10 numbers");%></h1> 
             <% 
              return ; 
            }   
            if(successful == 1){
            ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase();
           // out.print( PhoneNumber+ user_id );
            boolean isupdated = conn.update_information(PhoneNumber,user_id);
            if(isupdated == true){
            %>
             <h1> <%  out.print("Data is successfully inserted!"); out.print("<a href='home_user.jsp'> Home </a> ");%></h1> 
             <% 
                 }
            else{
                out.print("Error");
                }
  conn.close(); 
            }

            %> 
            <footer>
  <p>Group1</p>
</footer>

    </body> 
</html>
