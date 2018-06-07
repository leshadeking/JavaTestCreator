/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nir.DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Alexkcey
 */
public class DatabaseConnect {
    public Connection c = null;
    
    public boolean dbConnect() {
        try {
         Class.forName("com.mysql.jdbc.Driver");
         c = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/testsbd",
            "root", "");
      } catch (Exception e) {
         e.printStackTrace();
         System.err.println(e.getClass().getName()+": "+e.getMessage());
         System.exit(0);
      }
      System.out.println("Opened database successfully");
      return true;
    }
     
}
    
