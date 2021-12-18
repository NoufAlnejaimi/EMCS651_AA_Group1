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
     <h1>Event Managment System</h1>
     <h1> Registration</h1>
     <a href='index.jsp'>Main page</a>  
         </header> 
        <% 
            String Username = request.getParameter("Username");
            String Password =  request.getParameter("Password"); 
            String FullName = request.getParameter("Fullname");
         //   int PhoneNumber = Integer.parseInt(request.getParameter("PhoneNumber"));
         //   int NationalID = Integer.parseInt(request.getParameter("NationalID")); 
            String PhoneNumber = request.getParameter("PhoneNumber");
            String NationalID = request.getParameter("NationalID"); 
            String Email = request.getParameter("Email");
            int successful = 1 ;

            if (!Username.matches("^[a-zA-Z0-9._-]{4,}$")){
         %>  <h1> <% out.print("Username have to follow the instruction At least 4 characters—the more characters, the better. A mixture of both uppercase and lowercase letters. A mixture of letters , numbers and _-");%></h1> 
             <% 
           successful = 0 ;
           // return ; 
            } 
            if (!Password.matches("^[a-zA-Z0-9._-]{8,}$")){
         %> <h1> <%  out.print("Password have to follow the instruction At least 4 characters—the more characters, the better. A mixture of both uppercase and lowercase letters. A mixture of  letters , numbers and _-");%></h1> 
             <% 
           successful = 0 ; 
          //  return ; 
            } 
            if (!FullName.matches("^[a-zA-Z]{4,}$")){
        %>  <h1> <%  out.print("Full name have to be more 3");%></h1> 
             <% 
            successful = 0 ; 
          //  return ; 
            } 
            if (!PhoneNumber.matches("^[0-9]{10,}$")){
        %>  <h1> <%  out.print("Phone Number have to be 10 numbers");%></h1> 
             <% 
            successful = 0 ; 
          //  return ; 
            } 
            if (!NationalID.matches("^[0-9]{4,}$")){
        %>  <h1> <%  out.print("NationalID have to be 10 numbers");%></h1> 
             <% 
            successful = 0 ; 
            return ; 
            }
            if (!Email.matches("^[a-zA-Z0-9@._-]{5,}$")){
        %>  <h1> <%  out.print("Email have to follow the instruction.");%></h1> 
             <% 
            successful = 0 ; 
          //  return ; 
            } 
            int Role = 2 ;
            if(successful == 1){
            ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase();
            boolean isAdded = conn.add_user(Username,Password,FullName,PhoneNumber,NationalID,Email,Role);
            if(isAdded == true){
            %>
             <h1> <%  out.print("Data is successfully inserted!"); out.print("<a href='login.jsp'> Login</a> ");%></h1> 
             <% 
                 }
            else{
                out.print("Error");
                }
            }
            %> 
        <footer>   <p>All Rights Reserved to Group1</p>  </footer>


    </body> 
</html>
