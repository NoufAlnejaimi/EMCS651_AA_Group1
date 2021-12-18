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
     <h1> Add Workshop</h1>
   <h3>  <a href='home_admin.jsp'>Home</a>  <a href='../login.jsp'>Logout</a> </h3> 
         </header> 
        <%  
            if((int)session.getAttribute("role") == 1)
            { 
            String WorkshopName = request.getParameter("workshopname");
            String ByWho =  request.getParameter("bywho"); 
            String Day = request.getParameter("day");
            String Date = request.getParameter("date");
            String Time = request.getParameter("time"); 
            String price = request.getParameter("price");
            String Location = request.getParameter("location");         
//   int NationalID = Integer.parseInt(request.getParameter("NationalID")); 

            int successful = 1 ;

            if (!WorkshopName.matches("^[a-zA-Z]{1,}$")){
         %>  <h1> <% out.print("WorkshopName have to be more 3");%></h1> 
             <% 
           successful = 0 ;
           // return ; 
            } 
            if (!ByWho.matches("^[a-zA-Z.]{1,}$")){
         %> <h1> <%  out.print("ByWho have to be more 3");%></h1> 
             <% 
           successful = 0 ; 
          //  return ; 
            } 
            if (!Day.matches("^[a-zA-Z]{1,}$")){
        %>  <h1> <%  out.print("Day have to be more 3");%></h1> 
             <% 
            successful = 0 ; 
          //  return ; 
            } 
            if (!Date.matches("^[0-9._-]{1,}$")){
        %>  <h1> <%  out.print("Date have to be more 3");%></h1> 
             <% 
            successful = 0 ; 
          //  return ; 
            } 
            if (!Time.matches("^[a-zA-Z0-9-]{1,}$")){
        %>  <h1> <%  out.print("Time have to be more 3");%></h1> 
             <% 
            successful = 0 ; 
           // return ; 
            }
            if (!price.matches("^[0-9]{1,}$")){
        %>  <h1> <%  out.print("price numirce only");%></h1> 
             <%  
            successful = 0 ; 
          //  return ; 
            } 
             if (!Location.matches("^[a-zA-Z]{1,}$")){
              %>  <h1> <%  out.print("locationcharachters only");%></h1> 
             <%  
            successful = 0 ; 
          //  return ; 
            } 
             if(successful == 1){
            int Price = Integer.parseInt(price);
            ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase();
            boolean isAdded = conn.add_workshop(WorkshopName,ByWho,Day,Date,Time,Price,Location);
            if(isAdded == true){
            %>
             <h1> <%  out.print("EVENT is successfully inserted!   "); 
                 out.print("<a href='home_user.jsp'>Home</a>"); %></h1> 
             <% 
                 }
            else{
                out.print("Error");
                }
            }

                    }   
            else{
                out.print("You are not authorized to see info");
                 out.print("<a href='login.jsp'>login</a>");  

            }
            %> 
            <footer>
  <p>Group1</p>
</footer>

    </body> 
</html>
