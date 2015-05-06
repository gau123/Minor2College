/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;


import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author gaurav
 */
public class view {
    
    private String year;
    private String area;
    private String production;
    private String yield;
    private String indus;
    private String st1;
    private String y1;
    private String y2;
    private Connection cn=null;
    private ResultSet rs = null;
    private Statement st = null;
    private ResultSet rt;
    String connectionURL = "jdbc:mysql://localhost:3306/minoris";
    ArrayList ret=new ArrayList();
    
    
    public view()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection(connectionURL,"root","GAUsing@2011");
        }
        catch(Exception ex)
        {
            System.out.println("Exception is : " + ex);
        }
    }
    
    public String getIndus() {
        return indus;
    }

  /*  public void setIndus(String indus) {
        this.indus = indus;
    }
    */
    public String getSt1() {
        return st1;
    }

    public void setSt1(String st1) {
        this.st1 = st1;
    }
    
    public String getY1() {
        return y1;
    }

    public void setY1(String y1) {
        this.y1 = y1;
    }
    
    public String getY2() {
        return y2;
    }

    public void setY2(String y2) {
        this.y2 = y2;
    }
    
    public void retrieve()
    {
        view vw=new view();
        try
        {
            String qry="select * from " + indus + " where state='" + st1 + "' and year between '" + y1 + "' and '" + y2 + "'";
            rt=st.executeQuery(qry);
           while(rt.next())  
            {  
                 year=rs.getString("year");
                 area=rs.getString("area");
                 production=rs.getString("production");
                 yield=rs.getString("yield");
                 ret.add(vw);
            }  
            
          rs.close();
        }
        catch(Exception ex)
        {
            System.out.println("Error : " + ex);
        }
    }
    
}
