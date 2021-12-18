/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConnectionDatabase;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author noufalnejaimi
 */
public class ConnectionDatabase {

    String DBusername = "root";
    String DBPassword = "root1234";
    String DBURL = "jdbc:mysql://localhost:3306/event?useSSL=false";
    Connection connection = null;
    PreparedStatement preparedstatement = null;
    ResultSet resultset = null;
    String sqlQuery = "";

    //////////////////////////////
    public ConnectionDatabase() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(DBURL, DBusername, DBPassword);
        } catch (SQLException e) {
            System.out.println("can not connect to DB");
        } catch (ClassNotFoundException e) {
            System.out.println("can not connect to DB");
        }
    }
    /////////////////////////////////  

    public boolean verifyuser(String Username, String Password) {
        boolean exist = false;
        try {
            preparedstatement = connection.prepareStatement("SELECT username,password FROM users WHERE username=? And password=?;");
            preparedstatement.setString(1, Username);
            int hashcode = Password.hashCode();
            Password = ""+hashcode+"";
            preparedstatement.setString(2, Password);
            preparedstatement.setString(2, Password);
            resultset = preparedstatement.executeQuery();
            exist = resultset.next();
        } catch (SQLException e) {
            System.out.println("Somthing went roung try again");
        }
        return exist;
    }

    ////////
    public boolean add_user(String Username, String Password, String Fullname, String PhoneNumber, String NationalID, String Email, int Role) {
    //Statement stmt = connection.createStatement();  int i = stmt.executeUpdate(sqlQuery);
        try {
        sqlQuery = "insert into users (username,password,fullname,phonenumber,notinalid,email,roleid) VALUES (?,?,?,?,?,?,?);";
        preparedstatement = connection.prepareStatement(sqlQuery);
        preparedstatement.setString(1, Username);
        int hashcode = Password.hashCode();
        Password = ""+hashcode+"";
        preparedstatement.setString(2, Password);
        preparedstatement.setString(3, Fullname);
        preparedstatement.setString(4, PhoneNumber); 
        preparedstatement.setString(5, NationalID);
        preparedstatement.setString(6, Email);
        preparedstatement.setInt(7, Role);
        preparedstatement.execute(); 
        } catch (SQLException e) {
            System.out.print(e);
            e.printStackTrace();
            return false;
        }
        return true;

    }
    
 
 public boolean add_workshop(String WorkshopName, String ByWho, String Day, String Date, String Time, int Price , String Location ) {
    //Statement stmt = connection.createStatement();  int i = stmt.executeUpdate(sqlQuery);
        try {
        sqlQuery = "insert into workshop (workshopname, bywho , day ,date,time,price,location) VALUES (?,?,?,?,?,?,?);";
        preparedstatement = connection.prepareStatement(sqlQuery);
        preparedstatement.setString(1, WorkshopName); 
        preparedstatement.setString(2, ByWho);
        preparedstatement.setString(3, Day);
        preparedstatement.setString(4, Date); 
        preparedstatement.setString(5, Time);
        preparedstatement.setInt(6, Price);
        preparedstatement.setString(7, Location); 
        preparedstatement.execute(); 
        } catch (SQLException e) {
            System.out.print(e);
            e.printStackTrace();
            return false;
        }
        return true;

    }
 
  
 public boolean add_attend( int userid  , int workshopid) {
         try {
        sqlQuery = "insert into attendence_ (user_Id, workshop_Id) VALUES (?,?);";
        preparedstatement = connection.prepareStatement(sqlQuery); 
        preparedstatement.setInt(1, userid);
        preparedstatement.setInt(2, workshopid); 
        preparedstatement.execute(); 
        } catch (SQLException e) {
            System.out.print(e);
            e.printStackTrace();
            return false;
        }
        return true;

    }

 
    public boolean update_information( String PhoneNumber , int user_id ) { 
        try {
        sqlQuery = "UPDATE users SET phonenumber = ? WHERE id = ?;";
        preparedstatement = connection.prepareStatement(sqlQuery);
        preparedstatement.setString(1, PhoneNumber); 
        preparedstatement.setInt(2, user_id); 
        preparedstatement.execute(); 
        } catch (SQLException e) {
            System.out.print(e);
            e.printStackTrace();
            return false;
        }
        return true; 
    } 
    
        public boolean delete_event( int attend_id ) { 
        try {
        sqlQuery = "DELETE FROM attendence_ WHERE id = ?;";
        preparedstatement = connection.prepareStatement(sqlQuery);
         preparedstatement.setInt(1, attend_id); 
        preparedstatement.execute(); 
        } catch (SQLException e) {
            System.out.print(e);
            e.printStackTrace();
            return false;
        }
        return true; 
    } 
        
        
    public ResultSet get_users() {
        sqlQuery = "SELECT * FROM users ;";
        try {
            preparedstatement = connection.prepareStatement(sqlQuery);
            resultset = preparedstatement.executeQuery();
        } catch (SQLException e) {
        }
        return resultset;
    }
        public ResultSet get_attendence() {
        sqlQuery = "SELECT * FROM attendence_ ;";
        try {
            preparedstatement = connection.prepareStatement(sqlQuery);
            resultset = preparedstatement.executeQuery();
        } catch (SQLException e) {
        }
        return resultset;
    } 
        
        public ResultSet get_attendence_by_id() {
        sqlQuery = "SELECT * FROM attendence_ INNER JOIN users  ON attendence_.user_Id = users.id INNER JOIN workshop ON attendence_.workshop_Id = workshop.id  ; ";
        try {
            preparedstatement = connection.prepareStatement(sqlQuery);
            resultset = preparedstatement.executeQuery();
        } catch (SQLException e) {
        }
        return resultset;
    }    
               public ResultSet all_workshop() {
        sqlQuery = "SELECT * FROM workshop ;";
        try {
            preparedstatement = connection.prepareStatement(sqlQuery);
            resultset = preparedstatement.executeQuery();
        } catch (SQLException e) {
        }
        return resultset;
    }
       public ResultSet all_workshop_for_user(int user_id) {
        sqlQuery = "SELECT * FROM attendence_ INNER JOIN workshop ON attendence_.workshop_Id = workshop.id  WHERE attendence_.user_Id = ?; ";
        try {
          preparedstatement = connection.prepareStatement(sqlQuery);
         preparedstatement.setInt(1, user_id);
            resultset = preparedstatement.executeQuery();
        } catch (SQLException e) {
        }
        return resultset;
    }

       
    public ResultSet get_user_role(String Username) {
        sqlQuery = "SELECT * FROM users WHERE username=?;";
        try { 
            preparedstatement = connection.prepareStatement(sqlQuery);
            preparedstatement.setString(1, Username);
            resultset = preparedstatement.executeQuery();
            resultset.next();
        } catch (SQLException e) {
        }
        return resultset;
    }

    
    
    public void close() {
        try {
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionDatabase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
