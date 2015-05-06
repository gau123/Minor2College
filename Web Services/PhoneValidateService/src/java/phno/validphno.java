/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package phno;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.jws.WebService;

/**
 *
 * @author gaurav
 */
@WebService()
public class validphno {
    
    public boolean validatepno(String phno)
    {
        
        String pattern = "(\\d{10})";
        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(phno);
        if (m.matches( )) 
        {
            //System.out.println("Found value: ");
            return true;
        } 
        else 
        {
            return false;
        }
    }
    
}
