
package classes;
import java.util.Random;
public class OTP {

    public static String otp()
    {
        int rand=(int)(Math.random()*90000)+100000;
        String pin=String.valueOf(rand);
        return pin;        
    }
}
