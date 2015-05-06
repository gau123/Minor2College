
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
public class movingavg 
{
    public void calccc()
    {
        try
        {
            String qry;
            float afdiffsqsum=0;
            float rmse;
            Float[] afdiffsq=new Float[50];
            Float[] afdiff=new Float[50];
            Float[] prod=new Float[50];
            Float[] avg=new Float[50];
            int n=0;
            int i=1,j=1;
            
            
            
            utility ut=new utility();
            qry="select * from cotton where state='Gujarat' order by year asc";
            ResultSet rs=ut.DQL(qry);
            while(rs.next())
            {
                prod[i]=Float.parseFloat(rs.getString("production"));
                System.out.println(prod[i]);
                i++;
                n++;
            }
            System.out.println(i);
            for(j=1;j<i-2;j++)
            {
                // j++;
                avg[j+3]=(prod[j]+prod[j+1]+prod[j+2])/3;
                System.out.println("Average " + avg[j+3] + " "+(j+3));
                if((j+3)<29)
                {
                    afdiff[j+3]=prod[j+3]-avg[j+3];
                    System.out.println("a-f "+afdiff[j+3]+" "+(j+3)+" "+avg[j+3]+" "+prod[j+3]);
                    afdiffsq[j+3]=afdiff[j+3]*afdiff[j+3];
                    afdiffsqsum=afdiffsqsum+afdiffsq[j+3];
                }
            }
            rmse=(float) Math.sqrt(afdiffsqsum/n);
            System.out.println("RMSE is "+ rmse);
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
    }
    public static void main(String[] args)
    {
        movingavg reg=new movingavg();
        reg.calccc();
    }
}
