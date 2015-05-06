/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import javax.jws.WebService;

/**
 *
 * @author gaurav
 */
@WebService
public class CAGR {
    
    public float calc(double a1,double a2,int year)
    {
        String yrdiff;
        float r1=0;
        yrdiff=year+".0";
        r1=(float) ((Math.pow((a2/a1),(1.0/Double.parseDouble(yrdiff)))-1)*100);
        return r1;
    }
    
}
