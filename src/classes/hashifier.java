/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;
import java.security.MessageDigest;
import javax.swing.JOptionPane;
import javax.xml.bind.DatatypeConverter;

public class hashifier {
    public static String gethash(byte[]inputBytes, String algorithm){
       
        String hash="";
        try{
        MessageDigest md=MessageDigest.getInstance(algorithm);
        md.update(inputBytes);
        byte[]dB=md.digest();
        hash=DatatypeConverter.printHexBinary(dB).toLowerCase();
        
        }
        catch(Exception e){JOptionPane.showMessageDialog(null,e);}
       
    
    return hash;
}
}
