
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
public class regressiontrend 
{
    public void trend()
    {
        try
        {
            utility ut=new utility();
            Float[] prod=new Float[60];
            float prodsum=0;
            int isum=0;
            int isqsum=0;
            Float[] iprod=new Float[60];
            float iprodsum=0;
            int i=1;
            int[] isq=new int[60];
            String qry;
            qry="select production from sugar where state='Maharashtra'";
            ResultSet rs;
            rs=ut.DQL(qry);
            while(rs.next())
            {
                    prod[i]=Float.parseFloat(rs.getString("production"));
                    prodsum=prodsum+prod[i];
                    isum=isum+i;
                    isq[i]=i*i;
                    isqsum=isqsum+isq[i];
                    iprod[i]=prod[i]*i;
                    System.out.println(i + " " + prod[i] + " " + isq[i] + " " + iprod[i]);
                    i++;
            }
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
        
    }
    public static void main(String[] args)
    {
        regressiontrend rt=new regressiontrend();
        rt.trend();
    }
}
