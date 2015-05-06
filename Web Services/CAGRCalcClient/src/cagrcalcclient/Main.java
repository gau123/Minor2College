/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cagrcalcclient;

import java.util.Scanner;

/**
 *
 * @author gaurav
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        try 
        {
            double a, b;
            int c;
            float r;
            mypack.CAGRService service = new mypack.CAGRService();
            mypack.CAGR port = service.getCAGRPort();
            Scanner sc = new Scanner(System.in);
            System.out.println("Enter beginning value : ");
            a = sc.nextDouble();
            sc = new Scanner(System.in);
            System.out.println("Enter end value : ");
            b = sc.nextDouble();
            sc = new Scanner(System.in);
            System.out.println("Enter period : ");
            c = sc.nextInt();
            r = port.calc(a, b, c);
            System.out.println("r is " + r + "%");
        } 
        catch (Exception ex) 
        {
            System.out.println(ex);
        }
    }

}
