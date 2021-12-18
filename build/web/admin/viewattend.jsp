<%-- 
 
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Attend Event</title>
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
    <p>List of user / with registers event</p>
         <a href='home_admin.jsp'>Home</a>  <a href='../login.jsp'>Logout</a>  
        </header>
        <%   if((int)session.getAttribute("role") == 1)
            {  
            ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase();
            ResultSet resultset = conn.get_attendence_by_id(); 
         %>  
         <div>
         <table border="1">
                  <tbody>
                      
                      <tr>
                          <td> Event Name</td>
                          <td>Attendance Name</td>
                          <td>Phone Number</td> 
                      </tr>
                      <% while(resultset.next()) { %>
                      <tr>                             
                          <td><%= resultset.getString("workshopname")%></td> 
                          <td><%= resultset.getString("fullname")%></td>
                          <td><%= resultset.getString("phonenumber")%></td>
                      </tr>  
         <div>

                      <%     
             } 
                     conn.close(); 

                    }   
            else{
                out.print("You are not authorized to see info");
                 out.print("<a href='login.jsp'>login</a>");  

            }
    %>
                 
                  </tbody>
              </table>
                      </div>
       <footer>
  <p>Group1</p>
</footer>

    </body>    
 
</html>
