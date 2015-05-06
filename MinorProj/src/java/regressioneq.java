
import database.utility;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author gaurav
 */
public class regressioneq 
{
    public void eqn() 
    {
        try 
        {
            int t=0;//hai hi t
            int n=0;//no of rows
            int tsq=0;//t square ka sum
            float d,b;
            float s0;
            float prodsum=0;//production ka sum
            int tsum=0;//t ka sum
            float stsum=0;//s*t ka sum
            Float[] st=new Float[50];//s*t ki individual value
            Integer[] ts=new Integer[50];//t square ki individual value
            String qry;
            utility ut = new utility();
            qry = "select * from cotton where state='Karnataka' order by year asc";
            ResultSet rs = ut.DQL(qry);
            while (rs.next()) 
            {
                t++;
                prodsum=prodsum+Float.parseFloat(rs.getString("production"));
              //  System.out.println(rs.getString("production")+" "+t);
                ts[t]=t*t; 
                st[t]=Float.parseFloat(rs.getString("production"))*t;
                tsq=tsq+ts[t];
                n++;
                stsum=stsum+Float.parseFloat(rs.getString("production"))*t;
                System.out.println(stsum);
                tsum=tsum+t;
            }
            System.out.println(tsq);
            System.out.println(t);
           // System.out.println("Sum prod is "+prodsum);
            System.out.println("Total rows are "+n);
            System.out.println("t sum  is "+tsum + " "+n);
            System.out.println("st sum is "+stsum);
            d= n*tsq-(tsum*tsum);
            System.out.println(d);
            s0=((prodsum*tsq)-(tsum*stsum))/d;
            System.out.println(s0);
            b=((n*stsum)-(tsum*prodsum))/d;
            System.out.println(b);
        } 
        catch (Exception ex) 
        {
            System.out.println(ex);
        }
        
    }
    public static void main(String[] args)
        {
            regressioneq rq=new regressioneq();
            rq.eqn();
        }
}
