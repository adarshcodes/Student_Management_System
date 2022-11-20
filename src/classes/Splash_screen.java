/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.awt.Color;
import javax.swing.JOptionPane;


/**
 *
 * @author root
 */
public class Splash_screen {


      public static void main(String[] args) {
        frames.splashUI S=new frames.splashUI();
        S.setVisible(true);
        frames.Login_signup log=new frames.Login_signup();
        
        try{
       
            for(int i=0;i<=100;i++)
            {   int s=20;
                Thread.sleep(s);
                S.percentage.setText(Integer.toString(i)+"%"); 
                  int x=S.percentage.getX(); 
                  int y=S.percentage.getY();
                  int h=S.percentage.getHeight();
                  int w=S.percentage.getWidth();
                  x=x+6;   
              
                  S.percentage.setBounds(x,y,h,w); 
                  S.bar.setValue(i);
                 
                  if(i==100)
                {S.setVisible(false);
                    log.setVisible(true);
                }
            }
          }     catch(Exception e){
        }
      }
    }