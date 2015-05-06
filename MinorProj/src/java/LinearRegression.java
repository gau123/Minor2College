
import database.utility;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author gaurav
 */
public class LinearRegression {

    
    @SuppressWarnings("empty-statement")
    public void trend() 
    {
        try 
        {
            int MAXN = 1000;
            float fut;
            int n = 0;
            float[] x = new float[MAXN];
            float[] y = new float[MAXN];
            int j=1;
            float se;
            utility ut = new utility();
            float sumx = 0, sumy = 0, sumx2 = 0;
            String qry;
            Scanner sc=new Scanner(System.in);
            
            qry = "select production from cotton where state='Gujarat'";
            ResultSet rs;
            rs = ut.DQL(qry);
            while (rs.next()) 
            {
                x[n]=j;
                y[n]=Float.parseFloat(rs.getString("production"));
                j++;
                sumx =sumx+ x[n];
                sumx2 =sumx2+ x[n] * x[n];
                sumy =sumy+ y[n];
                n++;
            }
            
            float xbar = sumx / n;
            System.out.println("xbar is "+xbar);
            float ybar = sumy / n;
            System.out.println("ybar is "+ybar);
            
            // second pass: compute summary statistics
            float xxbar = 0, yybar = 0, xybar = 0;
            for (int i = 0; i < n; i++) 
            {
                xxbar += (x[i] - xbar) * (x[i] - xbar);
                yybar += (y[i] - ybar) * (y[i] - ybar);
                xybar += (x[i] - xbar) * (y[i] - ybar);
            }
            System.out.println("xxbar is "+xxbar);
            System.out.println("yybar is "+yybar);
            System.out.println("xybar is "+xybar);
            DecimalFormat numberFormat = new DecimalFormat("#0.00");
            float beta1 = xybar / xxbar;
            float beta0 = ybar - beta1 * xbar;
            numberFormat.format(beta1);
            numberFormat.format(beta0);

            if(beta0>0)
            {
                System.out.println("y = " + beta1 + " * x + " + beta0);
            }
            else
            {
                System.out.println("y = " + beta1 + " * x  " + beta0);
            }
            String eqn;
            String xv="";
            eqn=beta1+"*"+xv+beta0;
            System.out.println("eqn is "+eqn);
            // analyze results
            int df = n - 2;
            float rss = 0;      // residual sum of squares
            float ssr = 0;      // regression sum of squares
            for (int i = 0; i < n; i++) {
                double fit = beta1 * x[i] + beta0;
                rss += (fit - y[i]) * (fit - y[i]);
                ssr += (fit - ybar) * (fit - ybar);
            }
            float R2 = ssr / yybar;
            float svar = rss / df;
            float svar1 = svar / xxbar;
            float svar0 = svar / n + xbar * xbar * svar1;
            System.out.println("R^2                 = " + R2);
            System.out.println("std error of beta_1 = " + Math.sqrt(svar1));
            System.out.println("std error of beta_0 = " + Math.sqrt(svar0));
            svar0 = svar * sumx2 / (n * xxbar);
            System.out.println("std error of beta_0 = " + Math.sqrt(svar0));
            se=(yybar-(beta1*xybar))/(n-2);
            System.out.println("SSTO = " + yybar);
            System.out.println("SSE  = " + rss);
            System.out.println("SSR  = " + ssr);
        } catch (Exception ex) {

        }
    }

    public static void main(String[] args) 
    {
        LinearRegression lg=new LinearRegression();
        lg.trend();
    }
}
