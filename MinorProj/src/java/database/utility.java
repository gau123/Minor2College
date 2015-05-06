package database;

import java.sql.*;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author gaurav
 */
public class utility {
    
    /**
     * Constructor
     */
    Connection cn;
    Statement st;
    ResultSet rs; 
    public utility()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/minoris", "root", "GAUsing@2011");
            st=cn.createStatement();
        }
        catch(Exception ex)
        {
            
        }
    }
    public String DML(String query)
    {
        try
        {
            int re=st.executeUpdate(query);
            if(re>0)
                return "success";
            else
                return "error";
        }
        catch(Exception ex)
        {
            return ""+ex;
        }
        finally
        {
            
        }
    }
    
    public ResultSet DQL(String query)
    {
        try
        {
            rs=st.executeQuery(query);
            return rs;
        }
        catch(Exception ex)
        {
         
        }
        finally
        {
            return rs;
        }
    }
}
