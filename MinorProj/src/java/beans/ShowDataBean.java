/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import java.sql.*;
import java.util.*;

/**
 *
 * @author gaurav
 */
public class ShowDataBean 
{
    public String indus;
    public String st1,st2,y1,y2;
    String error;
    List<Object> allData=new ArrayList<Object>();
     
    public String production,yield,area;
    Object obj=new Object();
 
    public void setObj(Object obj) {
        this.obj = obj;
    }
    
     public void setIndus(String indus)
    {
        this.indus=indus;
    }
    public void setSt1(String st1)
    {
        this.st1=st1;
    }
    public void setSt2(String st2)
    {
        this.st2=st2;
    }
    
    public void setY1(String y1)
    {
        this.y1=y1;
    }
    
    public void setY2(String y2)
    {
        this.y2=y2;
    }
    
    public String getError() {
        return error;
    }
    public List getDb_Data()
    {
        int i=0;
        try
        {
                String qry;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minoris","root","GAUsing@2011");
                Statement s = con.createStatement();                
                qry="select * from " + indus + " where state='" + st1 + "' and year between '" + y1 + "' and '" + y2 + "'";
              // qry="select year,area,production,yield from foodgrains where state='Haryana'";
                ResultSet r=s.executeQuery(qry);
                while(r.next())
                {
                    
                    DataFields d=new DataFields(r.getString("year"), r.getString("area"), r.getString("production"),r.getString("yield"));                    
                    allData.add(i,d);
                    i++;
                }
                 
        }
        catch(Exception ex)
        {
                error="<b>Contact Administrator :</b><br/>" + ex;
                System.out.println("Your query is not working" + ex);
        }
       return allData;
    }
    
   public String getY1() {
        this.y1=((DataFields)obj).y1;
        return this.st1;
    }
 
    public String getArea() {
        this.area=((DataFields)obj).area;
        return this.area;
    }
    
    public String getProduction() {
        this.production=((DataFields)obj).production;
        return this.production;
    }
    
    public String getYield() {
        this.yield=((DataFields)obj).yield;
        return this.yield;
    }
 
    public class DataFields
    {
        public String production,y1,yield,area;
 
        public DataFields(String  y1,String  area,String  production,String  yield)
        {
            this.production=production;
            this.y1=y1;
            this.yield=yield;
            this.area=area;
        }
    }
 
   
    
    
}
