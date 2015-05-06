
import database.utility;
import java.sql.ResultSet;
import java.text.DecimalFormat;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author gaurav
 */
public class futurevalue 
{
    public void calc() 
    {
        try 
        {
            double ar1,ar2,r,r1;
            double nxtyr,nxty1,nxt,nx;
            String yrdiff;
            int yd = 0;
            String y1,y2;
            double p1 = 0,p2 = 0;
            ar1=1.23;
            ar2=3.072;
            DecimalFormat numberFormat= new DecimalFormat("#0.00");
            numberFormat.format(2.5);
            r=(Math.pow((ar2/ar1),(1.0/47.0))-1)*100;
            nx=1.23*Math.pow(1+r, 47);
            System.out.println("nx ki value "+nx + "Mtlb nx aur r same hi h");
            nxty1=3250+(3250*r)/100;
            System.out.println("Eg me 2008 ki value "+nxty1);
             nxt=nxty1+(nxty1*r)/100;
            System.out.println("Eg me 2008 ki value "+nxt);
            System.out.println(r);
            System.out.println(1.0/47.0);
            utility ut = new utility();
            String qry;
            //qry = "select * from cotton where state='Gujarat' order by year desc limit 1";
             qry = "select * from cotton where state='Gujarat' and year='2012-13'";
            ResultSet rs = ut.DQL(qry);
            if(rs.next()) 
            {
                System.out.println(rs.getString("production"));
                System.out.println(rs.getString("year"));
                p1=Double.parseDouble(rs.getString("production"));
                y1=rs.getString("year");
            }
            qry = "select * from cotton where state='Gujarat' order by year asc limit 1";
            rs = ut.DQL(qry);
            if(rs.next()) 
            {
                System.out.println(rs.getString("production"));
                System.out.println(rs.getString("year"));
                p2=Double.parseDouble(rs.getString("production"));
                y2=rs.getString("year");
            }
            qry = "select count(*) from cotton where state='Gujarat'";
            rs = ut.DQL(qry);
            if(rs.next()) 
            {
                yd=Integer.parseInt(rs.getString(1))-1;
                System.out.println(yd+".0");
            }
            //yd=yr1 - yrr1;
            yrdiff=yd+".0";
            r1=(Math.pow((p1/p2),(1.0/Double.parseDouble(yrdiff)))-1)*100;
            System.out.println("Ye aya h "+1.0/Double.parseDouble(yrdiff));
            System.out.println("r1 ki value " + r1);
            nxtyr=p1+(p1*r1)/100;
            System.out.println("2015 ki value " + nxtyr);
        } 
        catch (Exception ex) 
        {
                System.out.println(ex);
        }

    }

    public static void main(String args[]) 
    {
        futurevalue ob=new futurevalue();
        ob.calc();
    }
}
