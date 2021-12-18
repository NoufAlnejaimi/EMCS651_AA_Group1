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
        <title>Verification</title>
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
    <p>Verification</p>
        </header>
    <div>
        <%
     
            String Username= request.getParameter("username"); 
            String Password= request.getParameter("password"); 
             if( Username != null && Username.length() !=0 ){ 
                ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase();
                boolean exist = conn.verifyuser(Username,Password);
                if(exist){
              %>
                
     <h1> <%out.print("Welcome"); %></h1> 
           
                <%
                session.setAttribute("username", Username);
                session.setAttribute("password", Password); 
                
               // ResultSet resultset= conn.get_user_role(Username);
              //  int Role = 0 ; 
              //  while (resultset.next()) { 
             //   Role = resultset.getInt("role");
              //   }
               // session.setAttribute("role", Role);  
               // out.print(Role);

                %>
                
                 <h1> <% out.print("<a href='showuser.jsp'> Show User</a>"); %> </h1> 
               <h1> <% out.print("<a href='signup.jsp'> Insert User</a> "); %></h1>
                <%
                
            }
           
                else{
                    %> 
                <h2> <% out.print("incoreect login info"); %></h2>
                    <%
               
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
