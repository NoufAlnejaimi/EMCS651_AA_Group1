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
        <title>All Events</title>
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
            }
            div{
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
<h3> <a href='home_user.jsp'>Home</a>   <a href='allevents.jsp'>All Events</a>  <a href='../login.jsp'>Logout</a>  </h3>

            <p> All Events Page ,Hi : <% out.print(session.getAttribute("username")); %></p> 
            <h5></h5>

        </header>


        <div>
            <table>
                <thead>   
                    <tr>
                        <th> </th>
                        <th></th>
                    </tr>
                </thead> 
                <tbody>  
                    <% 
                      if(session.getAttribute("username") != null){
                      String Username=  (String)session.getAttribute("username");  
                          ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase(); 
                           ResultSet resultset= conn.get_user_role(Username);
                           int Role = resultset.getInt("roleid");
                           int User_id = resultset.getInt("id");
                           session.setAttribute("role", Role);  
                           session.setAttribute("user_id", User_id); 
                         if (Role == 1){
                    %>   
                    <tr>                     
                        <td><a href='workshopform.jsp'> workshop form</a></td>
                        <td><a href='viewattend.jsp'> view attend</a></td>
                    </tr> 
                    <% 
                    } 
                else{    

                    %>
                <form name="selectworkshop" action="thankyou.jsp" method="POST">   
                    <table border="1">
                        <thead>
                            <tr>
                                <th></th> 
                                <th>Event</th>
                                <th>Guest</th>
                                <th>Day</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Price</th>
                                <th>Location</th>
                            </tr>
                        </thead> 
                        <tbody>
                            <%   
                        ResultSet resultsett = conn.all_workshop(); 

                          while(resultsett.next()) {  
                         // int workshop_id = resultsett.getInt("id");  
                            %> 
                            <tr>
                                <td><input type="radio" name="workshop_id" value=<%= resultsett.getInt("id")%>  checked="true" /> </td>
                                <td><%= resultsett.getString("workshopname")%></td>
                                <td><%= resultsett.getString("bywho")%></td>
                                <td><%= resultsett.getString("day")%></td>
                                <td><%= resultsett.getString("date")%></td>
                                <td><%= resultsett.getString("time")%></td>
                                <td><%= resultsett.getInt("price")%></td>
                                <td><%= resultsett.getString("location")%></td>
                            </tr>
                            <%} %>
                        </tbody>
                    </table> 
                    <input type="submit" value="submit" name="submit" />  
                </form>
                <%
                } 
                conn.close();   
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
