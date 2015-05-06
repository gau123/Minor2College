/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;

/**
 *
 * @author gaurav
 */
public class cleaning {

    public static void main(String[] args) {
        // TODO code application logic here
        Connection cn = null;
        Statement st = null;

        try {
            String[] state = {"Andhra Pradesh", "Bihar", "Gujarat", "Haryana", "Karnataka", "Madhya Pradesh", "Maharashta", "Punjab", "Rajasthan", "Tamil Nadu", "Uttar Pradesh"};
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/minoris", "root", "GAUsing@2011");
            st = cn.createStatement();
            int j = 0;
            String sql;
            int sum;
            int sum1;
            int sum2;
            int avg,avg2;
            int i;
            int area,prod,yield;
            float pr;
            float sump;
            ResultSet rs;
            for (j = 0; j < state.length; j++) 
           {
                i=0;
                sump=0;
                avg=1;
                float avp;
                avg2=1;
                sum=0;sum1=0;sum2=0;
                sql = "Select area,production,yield,year FROM cotton where state='"+state[j]+"'";
                rs = st.executeQuery(sql);
                while (rs.next()) 
                {
                    area = rs.getInt("area");
                    pr= rs.getFloat("production");
                    yield = rs.getInt("yield");
                    System.out.println("production "+pr +" "+rs.getString("year"));
                    sum = area + sum;
                    sump = pr + sump;
                    sum2 = yield + sum2;
                    i++;
                }
                avg = sum / i;
                avp = sump / i;
                //System.out.println(state[j]);
                System.out.println(avp);
                String sql2 = "UPDATE cotton SET production = " + avp + " WHERE production is NULL and state='"+state[j]+"'";
                st.executeUpdate(sql2);

           }

        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

}
