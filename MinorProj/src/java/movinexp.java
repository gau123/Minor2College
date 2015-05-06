
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
public class movinexp {

    public void calcc() {
        try {
            String qry;
            float afdiffsqsum = 0;
            float prodsum = 0;
            float totavg, totmax = 0, totmin = 0;
            float futfin;
            float rmse;
            float smp = 0;
            Float[] afdiffsq = new Float[50];
            Float[] afdiff = new Float[50];
            Float[] prod = new Float[50];
            Float[] avg = new Float[50];
            int n = 0;
            int i = 1, j = 1;

            utility ut = new utility();
            qry = "select * from cotton where state='Gujarat' order by year asc";
            ResultSet rs = ut.DQL(qry);
            while (rs.next()) 
            {
                prod[i] = Float.parseFloat(rs.getString("production"));
                prodsum = prodsum + prod[i];
                i++;
                n++;
            }
            totavg = prodsum / n;
            for (j = 1; j < i - 2; j++) 
            {
                avg[j + 3] = (prod[j] + prod[j + 1] + prod[j + 2]) / 3;
                smp = avg[j + 3];
                System.out.println("Average " + avg[j + 3] + " " + (j + 3));

                if ((j + 3) < 29) 
                {
                    afdiff[j + 3] = prod[j + 3] - avg[j + 3];
                    afdiffsq[j + 3] = afdiff[j + 3] * afdiff[j + 3];
                    afdiffsqsum = afdiffsqsum + afdiffsq[j + 3];
                }
            }
            System.out.println("Future simple is " + smp);
            rmse = (float) Math.sqrt(afdiffsqsum / n);
            System.out.println("RMSE is " + rmse);

            //exponential starts
            double[] aa = new double[60];
            float futexp;
            String sql;
            double sumprod = 0;
            int ne = 0;
            float avge;
            utility ob = new utility();
            sql = "select production from cotton where state='Gujarat'";
            rs = ob.DQL(sql);
            while (rs.next()) 
            {
                sumprod = sumprod + Double.parseDouble(rs.getString("production"));
                ne++;
            }
            avge = (float) (sumprod / ne);
            System.out.println(avge);
            sql = "SELECT Production, Year,max(production),min(production) FROM cotton where state='Gujarat'";
            Double[] dtftdif = new Double[60];
            Double[] dtftdifsq = new Double[60];
            double sumdtdtdifsq;
            double rmsexp;
            int ie = 0;
            double c = 0.7, dt = 0, ft = 0;
            sumdtdtdifsq = 0;
            ie = 0;
            rs = ob.DQL(sql);
            while (rs.next()) 
            {
                dt = rs.getInt("Production");
                    //totmax=(float) dt;
                //totmin=(float) dt;
                totmax = Float.parseFloat(rs.getString(3));
                totmin = Float.parseFloat(rs.getString(4));
                if (ie == 0) 
                {
                    ft = avge;
                    dtftdif[ie] = avge - dt;
                    dtftdifsq[ie] = dtftdif[ie] * dtftdif[ie];
                    sumdtdtdifsq = sumdtdtdifsq + dtftdifsq[ie];
                    aa[ie] = ft;
                } 
                else 
                {
                    ft = c * dt + (1 - c) * ft;
                    dtftdif[ie] = dt - ft;
                    dtftdifsq[ie] = dtftdif[ie] * dtftdif[ie];
                    sumdtdtdifsq = sumdtdtdifsq + dtftdifsq[ie];
                    aa[ie] = ft;
                }
                ie++;
                    //totmax=Float.parseFloat(rs.getString("max(producttion)"));
                //totmax=Float.parseFloat(rs.getString("min(producttion)"));
            }
            utility uu = new utility();
            qry = "select  from cotton where state='Gujarat'";
            System.out.println(qry);

            rmsexp = Math.sqrt(sumdtdtdifsq / ie);
            ft = c * dt + (1 - c) * ft;
            futexp = (float) ft;
            System.out.println("Future exp is : " + futexp);
            System.out.println("RMSE for exponential smoothing is " + rmsexp);
            if (rmse > rmsexp) 
            {
                futfin = futexp;
            } 
            else 
            {
                futfin = smp;
            }
            System.out.println("Final Future value is " + futfin);
            System.out.println("Max value is " + totmax + " and Min value is " + totmin);
            System.out.println("Average Production is " + totavg);

            //cagr calc vaala
            int k=0;
            double r1;
            double nxtyr = 0;
            String yrdiff;
            int yd = 0;
            String y1,y2;
            double p1 = 0, p2 = 0;
            DecimalFormat numberFormat = new DecimalFormat("#0.00");
            numberFormat.format(2.5);
            qry = "select * from cotton where state='Gujarat' and year='2012-13'";
            rs = ut.DQL(qry);
            if (rs.next()) 
            {
                p1 = Double.parseDouble(rs.getString("production"));
                y1 = rs.getString("year");
            }
            qry = "select * from cotton where state='Gujarat' order by year asc limit 1";
            rs = ut.DQL(qry);
            if (rs.next()) 
            {
                p2 = Double.parseDouble(rs.getString("production"));
                y2 = rs.getString("year");
            }
            qry = "select count(*) from cotton where state='Gujarat'";
            rs = ut.DQL(qry);
            if (rs.next()) 
            {
                yd = Integer.parseInt(rs.getString(1)) - 1;
            }
            yrdiff = yd + ".0";
            r1 = (Math.pow((p1 / p2), (1.0 / Double.parseDouble(yrdiff))) - 1) * 100;
            while(k<3)
            {
                if(k==0)
                {
                    nxtyr = futfin + (futfin * r1) / 100;
                    System.out.println(k +" pe value "+nxtyr);
                }
                else
                {
                    nxtyr=nxtyr+(nxtyr*r1)/100;
                    System.out.println(k +" pe value "+nxtyr);
                }
                k++;
            }
        } 
        catch (Exception ex) 
        {
            System.out.println(ex);
        }
    }

    public static void main(String[] args) {
        movinexp mexp = new movinexp();
        mexp.calcc();
    }
}
