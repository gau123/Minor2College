/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.jws.WebService;

/**
 *
 * @author gaurav
 */
@WebService()
public class validatepno {
    
    public boolean validate(String phno)
    {
        String a;
        //a = phno.getText();
        String pattern = "(\\d{10})";
        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(phno);
        if (m.matches( )) 
        {
            return true;
        } 
        else 
        {
           return false;
        }
    }
    
    public static void main(String[] args)
    {
        validatepno vp=new validatepno();
        Scanner sc=new Scanner(System.in);
        System.out.println("enter phone no :");
        String phn;
        phn=sc.next();
        boolean result;
        result=vp.validate(phn);
        System.out.println(result);
    }
}
