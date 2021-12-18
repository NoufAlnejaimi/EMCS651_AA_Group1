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
    <p>Verification</p>
        </header>
    <div>
        <% String Username= request.getParameter("username"); 
            String Password= request.getParameter("password"); 
             if( Username != null && Username.length() !=0 ){ 
                ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase();
                boolean exist = conn.verifyuser(Username,Password);
                if(exist){ 
                session.setAttribute("username", Username);
                session.setAttribute("password", Password);  
                 ResultSet resultset= conn.get_user_role(Username);
                 int Role = resultset.getInt("roleid");
                 int User_id = resultset.getInt("id");
                 session.setAttribute("role", Role);  
                 session.setAttribute("user_id", User_id);   
                 if (Role == 1){
                 response.sendRedirect("./admin/home_admin.jsp"); 
            //   out.print("coreect login info"); 
                     }
                else{
                 response.sendRedirect("./user/home_user.jsp"); 
              //out.print("coreect login info");
                     } 
                } 
                else{
                    %> 
                <h2> <% out.print("incoreect login info please try to <a href='login.jsp'> login </a> again ");
                        %></h2>
                    <% 
                     }
            }
            else{
                response.sendRedirect("login.jsp");
            }  
            %> 
    </div>
               <footer>   <p>All Rights Reserved to Group1</p>  </footer>


    </body>

    
</html>
