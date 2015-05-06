/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author gaurav
 */
public class show 
{
    String error;
    List<Object> allData=new ArrayList<Object>();
    public String cmnt,name;
    Object obj=new Object();
 
    public void setObj(Object obj) 
    {
        this.obj = obj;
    }
    public String getError() {
        return error;
    }
    public List getDb_Data()
    {
        int i=0;
        int j=0;
        try
        {
                String qry;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minoris","root","GAUsing@2011");
                Statement s = con.createStatement();                
                qry="select cmnt,name from contact order by id desc";
                ResultSet r=s.executeQuery(qry);
                while(j<3)
                {
                    if(r.next())
                    {
                        DataFields d=new DataFields(r.getString("cmnt"), r.getString("name"));                    
                        allData.add(i,d);
                        i++;
                    } 
                    j++;
                }
                
                 
        }
        catch(Exception ex)
        {
                error="<b>Contact Administrator :</b><br/>" + ex;
                System.out.println("Your query is not working" + ex);
        }
       return allData;
    }
    public String getName()
    {
        this.name=((DataFields)obj).name;
        return this.name;
    }
    public String getCmnt() {
        this.cmnt=((DataFields)obj).cmnt;
        return this.cmnt;
    }
 
      
 
    public class DataFields
    {
        public String name,cmnt;
 
        public DataFields(String  cmnt,String  name)
        {
            this.name=name;
            this.cmnt=cmnt;
        }
    }
}
