<%-- 
     Author     : noufalnejaimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign UP Form</title>
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
   padding: 20px;
    padding-left: 630px; 
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
    <p>SignUp Page</p>
        </header>
        <div>
       <form name="loginForm" action="registration.jsp" method="POST"> 
            <table border="1">
                
                <tbody>
                    <tr>
                    <td>Username </td>
                    <td><input type="text" name="Username" value="" size="20" /></td>
                </tr> 
                <tr>
                    <td>Password </td>
                    <td><input type="Password" name="Password" value="" size="20" /></td>
                </tr> 
                <tr>
                    <td>Full Name </td>
                    <td><input type="text" name="Fullname" value="" size="20" /></td>
                </tr>
               
                <tr>
                    <td> Phone Number </td>
                    <td><input type="text" name="PhoneNumber" value="" size="20" /></td>
                </tr>
                <tr>
                    <td>National ID </td>
                    <td><input type="text" name="NationalID" value="" size="20" /></td>
                </tr> 
             <tr>
                    <td>Email </td>
                    <td><input type="text" name="Email" value="" size="20" /></td>
                </tr> 
                     <tr>
                      <td><input type="submit" value="Sign up" name="Sign up" /></td>
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


 