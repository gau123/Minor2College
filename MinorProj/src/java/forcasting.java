/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import database.utility;
import java.sql.*;

/**
 *
 * @author gaurav
 */
public class forcasting {

    public static void main(String[] args) {
        // TODO code application logic here
        

        try {
            
            double[] aa = new double[60];
            String sql;
            double sumprod=0;
            int ne=0;
            ResultSet rs = null;
            float avge;
            utility ob=new utility();
            sql="select production from cotton where state='Gujarat'";
            rs=ob.DQL(sql);
            while(rs.next())
            {
                sumprod=sumprod+Double.parseDouble(rs.getString("production"));
                ne++;
            }
            avge=(float) (sumprod/ne);
            System.out.println(avge);
            sql = "SELECT Production, Year FROM cotton where state='Gujarat'";
            
            Double[] dtftdif=new Double[60];
            Double[] dtftdifsq=new Double[60];
            double sumdtdtdifsq;
            double rmsexp;
            int ie = 0;
            double c = 0.1, dt = 0, ft = 0;
            for (c = 0.1; c <0.8; c = c + 0.1) 
            {
                sumdtdtdifsq=0;
                ie=0;
                rs = ob.DQL(sql);
                while (rs.next()) 
                {
                    dt = rs.getInt("Production");
                    // System.out.println("Production "+dt+" "+rs.getString("year"));
                    if (ie == 0) 
                    {
                        ft = avge;
                        dtftdif[ie]=avge-dt;
                        dtftdifsq[ie]=dtftdif[ie]*dtftdif[ie];
                        sumdtdtdifsq=sumdtdtdifsq+dtftdifsq[ie];
                        aa[ie] = ft;
                       // System.out.println("aa " + ft + " " + i + " " + rs.getString("year")+ "with c " + c);
                    }
                    else
                    {
                        ft = c * dt + (1 - c) * ft;
                        dtftdif[ie]=dt-ft;
                        dtftdifsq[ie]=dtftdif[ie]*dtftdif[ie];
                        sumdtdtdifsq=sumdtdtdifsq+dtftdifsq[ie];
                        aa[ie] = ft;
                        //System.out.println("aa " + ft + " " + i + " " + rs.getString("year")+ "with c " + c);
                    }
                    
                    ie++;
                    //System.out.println("hie");
                }
               // System.out.println("sum for c "+ c+"is "+sumdtdtdifsq);
                rmsexp=Math.sqrt(sumdtdtdifsq/ie);
                ft = c * dt + (1 - c) * ft;
               // System.out.println("in the" + i + "year,the production is " + ft + "with c " + c);
                System.out.println("RMSE for c "+c+" is "+rmsexp);
            }

            rs.close();

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println(ex);
        }
    }

}
