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
<h3> <a href='home_user.jsp'>Home</a>   <a href='allevents.jsp'>All Events</a>  <a href='login.jsp'>Logout</a>  </h3>

            <p> All Events Page , Hi : <% out.print(session.getAttribute("username")); %></p> 
 
        </header>


        <div>
            
                 <% 
            if(session.getAttribute("role") != null )
            { 
            if((int)session.getAttribute("role") == 2 )
            {   // myy workshop 
                ConnectionDatabase.ConnectionDatabase conn = new ConnectionDatabase.ConnectionDatabase(); 
                ResultSet resultsett = conn.all_workshop_for_user((int)session.getAttribute("id")); 

                %>
                <form name="selectworkshop" action="thankyou.jsp" method="POST">   
                    <table border="1">
                        <thead>
                            <tr>
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
                     while(resultsett.next()) {  
                     // int workshop_id = resultsett.getInt("id");  
                            %> 
                            <tr>
                                <td><%= resultsett.getInt("id")%> </td>
                                <td><%= resultsett.getString("workshopname")%></td>
                                <td><%= resultsett.getString("bywho")%></td>
                                <td><%= resultsett.getString("day")%></td>
                                <td><%= resultsett.getString("date")%></td>
                                <td><%= resultsett.getString("time")%></td>
                                <td><%= resultsett.getInt("price")%></td>
                                <td><%= resultsett.getString("location")%></td>
                            </tr>
                            <%
                                } // end while
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
                 </form>
                <% 
                conn.close();  
                %> 
                </tbody>
            </table>
        </div>
        <footer>
            <p>Group1</p>
        </footer>

    </body>


</html>
