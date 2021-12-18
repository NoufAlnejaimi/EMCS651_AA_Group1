<%-- 
     Author     : noufalnejaimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Workshop</title>
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
    <p>New Workshop</p>
         <a href='home_admin.jsp'>Home</a>  <a href='../login.jsp'>Logout</a>  
        </header> 
        <div> 
       <form name="newWorkshop" action="addworkshop.jsp" method="POST"> 
            <table border="1"> 
                <tbody>
                    <tr>
                    <td>workshop name </td>
                    <td><input type="text" name="workshopname" value="" size="20" /></td>
                </tr> 
                <tr>
                    <td>by who </td>
                    <td><input type="text" name="bywho" value="" size="20" /></td>
                </tr> 
                <tr>
                    <td>day </td>
                    <td><input type="text" name="day" value="" size="20" /></td>
                </tr>
               
                <tr>
                    <td> date </td>
                    <td><input type="text" name="date" value="" size="20" /></td>
                </tr> 
                 <tr>
                    <td>price </td>
                    <td><input type="text" name="price" value="" size="20" /></td>
                </tr> 
                   <tr>
                    <td>time </td>
                    <td><input type="text" name="time" value="" size="20" /></td>
                </tr> 
             <tr>
                    <td>location </td>
                    <td><input type="text" name="location" value="" size="20" /></td>
                </tr> 
                     <tr>
                      <td><input type="submit" value="submit" name="submit" /></td>
                      <td><input type="reset" value="Reset" name="Reset" /></td>
                      
                </tr> 
                </tbody>
            </table> 
        </form> 
              </div>   
            <footer>
  <p>Group1</p>
</footer>
    </body>
</html>


 