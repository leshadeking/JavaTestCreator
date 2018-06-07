/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nir.DataBase;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Alexkcey
 */
public class SQL {
    private DatabaseConnect dbc = new DatabaseConnect();
    private Connection cn = null;
    public List<String> getNames(String request) 
    {
        boolean isCon = dbc.dbConnect();
        List<String> resultList = new  ArrayList<>();
        cn = dbc.c;
        if(isCon) {
            try 
            {
                Statement stmt = null;
                stmt = cn.createStatement();
                ResultSet rs;
                rs = stmt.executeQuery(request);
                int i = 0;
                while (rs.next()) 
                {
                    System.out.println(rs.getString(1));
                    resultList.add( i, rs.getString(1));
                    i++;
                }
                stmt.close();
                cn.close();
                rs.close();
            } 
            catch ( SQLException e ) 
            {
            System.err.println( e.getClass().getName()+": "+ e.getMessage() );
            System.exit(0);
            }
        }
        return resultList;
    }
    public List<Integer> getIntL(String request) 
    {
        boolean isCon = dbc.dbConnect();
        List<Integer> resultList = new  ArrayList<>();
        cn = dbc.c;
        if(isCon) {
            try 
            {
                Statement stmt = null;
                stmt = cn.createStatement();
                ResultSet rs;
                rs = stmt.executeQuery(request);
                int i = 0;
                while (rs.next()) 
                {
                    resultList.add( i, rs.getInt(1));
                    i++;
                }
                stmt.close();
                cn.close();
                rs.close();
            } 
            catch ( SQLException e ) 
            {
            System.err.println( e.getClass().getName()+": "+ e.getMessage() );
            System.exit(0);
            }
        }
        return resultList;
    }
    
    public String getStrigSQL(String request) 
    {
        boolean isCon = dbc.dbConnect();
        String result = null;
        cn = dbc.c;
        if(isCon) {
            try 
            {
                Statement stmt = null;
                stmt = cn.createStatement();
                ResultSet rs;
                rs = stmt.executeQuery(request);
                while (rs.next())
                result = rs.getString(1);
                stmt.close();
                cn.close();
                rs.close();
            } 
            catch ( SQLException e ) 
            {
            System.err.println( e.getClass().getName()+": "+ e.getMessage() );
            System.exit(0);
            }
        }
        return result;
    }
}
