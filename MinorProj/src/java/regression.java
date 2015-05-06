
import database.utility;
import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author gaurav
 */
public class regression 
{
   
    public void calcc()
    {
        try
        {
            String qry;
            String[][] pr=new String[6][6];
            String[][] ar=new String[6][6];
            String[][] yr=new String[6][6];
            int i=0,j=0;
            utility ut=new utility();
            qry="select * from cotton where state='Gujarat' order by year asc";
            ResultSet rs=ut.DQL(qry);
            while(rs.next())
            {
                System.out.println("aya");
                pr[j][i]=rs.getString("production");
                ar[j][i]=rs.getString("area");
                yr[j][i]=rs.getString("yield");
                System.out.println("Production "+rs.getString("production")+" "+"Area "+rs.getString("area")+" "+"Yield "+rs.getString("yield")+" "+rs.getString("year")+ " "+j+ " "+i);
                i++;
                 if(i==5 && j<6)
                 {
                     j++;
                     i=0;
                 }
            }
            for(j=0;j<pr.length;j++)
            {
                for(i=0;i<pr.length-1;i++)
                {
                    System.out.println(pr[j][i]+" "+ar[j][i]+" "+yr[j][i]+" " + j+" "+i);
                }
            }
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
    }
    public static void main(String[] args)
    {
        regression reg=new regression();
        reg.calcc();
    }
}
