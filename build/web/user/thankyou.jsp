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
            <h1> Thank you </h1>
  <a href='home_user.jsp'>Home</a>   <a href='allevents.jsp'>All Events</a>  <a href='../login.jsp'>Logout</a>  

        </header> 
        <div> 
        <%  
          if(session.getAttribute("username") != null){  
         int user_id = (int)request.getSession().getAttribute("user_id");
         int workshop_id =Integer.parseInt(request.getParameter("workshop_id"));
         ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase();
          boolean exist = conn.add_attend(user_id,workshop_id);
          if(exist){ 
                 %>  <h2> <% out.print("you are successfully registered!  "); %></h2>  <% 

          out.print("\t - <a href='login.jsp'> Logout </a> ");
          conn.close();  
            }
            else{
                %>  <h2> <% out.print("incoreect info"); %></h2>  <% 
                }
           }
            else{
                response.sendRedirect("login.jsp");
                }  
        %> 
                </div> 

        <footer>
            <p>Group1</p>
        </footer>

    </body> 
</html>
