<%-- 
 
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show User</title>
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
     padding-left: 720px; 
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
    <p>Show Users Page</p>
        </header>
        <%   if(session.getAttribute("username") != null)
            {  
            ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase();
            ResultSet resultset = conn.get_users(); 
         %>  
         <div>
         <table border="1">
                  <tbody>
                      
                      <tr>
                          <td>name</td>
                      </tr>
                      <% while(resultset.next()) { %>
                      <tr>
                          <td><%= resultset.getString("username")%></td>
                      </tr>  
         <div>

                      <%     
             } 
                    conn.close(); 

                    }   
            else{
                out.print("You are not authorized to see info");
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
