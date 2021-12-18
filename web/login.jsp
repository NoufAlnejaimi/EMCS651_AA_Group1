<%-- 
    Document   : index
     Author     : Nouf
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
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
    <p>Login Page</p>
        </header>
   <div>
       <form name="login_form" action="check.jsp" method="POST">
            <table border="0"> 
                <tbody>
                    <tr>
                        <td> Username</td>
                        <td><input type="text" name="username" value="" size="10" /></td>
                    </tr>
                    <tr>
                        <td> Password</td>
                        <td><input type="Password" name="password" value="" size="8" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" name="Submit" /></td>
                        <td><input type="reset" value="Clear" name="Clear" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
       </div> 
        <footer>
  <p>Group1 </p>
</footer>
    </body>
</html>
