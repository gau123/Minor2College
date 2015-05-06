/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import java.util.ArrayList;

/**
 *
 * @author gaurav
 */
public class dif 
{
    public static int mindiff(){
        int x=0;
       float min=9999999;
        ArrayList<yldcluster> l=yldclusterarraylist.getyldcluster();
        for(int i=0;i<l.size();i++)
        {
           
            if(min>l.get(i).getDiff()){
                min=l.get(i).getDiff();
            x=i;
            }
        }
  //  l.remove(x);
    return x;
    }
    
    
}
