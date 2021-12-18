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
        <title>Home</title>
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
         <a href='home_admin.jsp'>Home</a>  <a href='../login.jsp'>Logout</a>  
        </header>
    <div>
      <table>

        <% 
            if(session.getAttribute("role") != null )
            { 
            if((int)session.getAttribute("role") == 1 )
            {   
              %> 
                <thead>   
                <tr>
                <th>Home page</th>
                <th></th>
                </tr>
                </thead> 
              <%   
                 %> <tbody> 
                    <tr>
                    <td>Hi : <% out.print(session.getAttribute("username")); %></td>
                    </tr>   
                    <tr>                     
                    <td><a href='workshopform.jsp'> Add Event </a></td>
                    <td><a href='viewattend.jsp'> View attend</a></td>
                    </tr> 
                    <%  
            } 
            else{
                 out.print("You are not authorized to see info");
                 out.print("<a href='login.jsp'>login</a>"); 
            } 
            }
            else{
                response.sendRedirect("login.jsp");

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
