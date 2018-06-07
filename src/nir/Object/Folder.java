/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nir.Object;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import nir.DataBase.DatabaseConnect;

/**
 *
 * @author Alexkcey
 */
public class Folder {
    private DatabaseConnect dbc = new DatabaseConnect();
    private Connection cn = null;
    public int id;
    public String folder_name;
    public int value;
    public Folder(int test_id)
    {
        boolean isCon = dbc.dbConnect();
        cn = dbc.c;
        if(isCon) {
            try 
            {
                Statement stmt = null;
                stmt = cn.createStatement();
                ResultSet rs;
                rs = stmt.executeQuery("SELECT * from graphs WHERE Test_id = " + test_id);
                while (rs.next()) 
                {
                    id = rs.getInt(2);
                    folder_name = rs.getString(3);
                    value = rs.getInt(4);
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
    }
}
