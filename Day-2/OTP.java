import java.util.*;
class OTP {
       
   static int OTP(){
       Random ran = new Random();
       return 1000+ran.nextInt(5000);
   }
   public static void main(String[] args){  
    System.out.println("Enter your number:");
    Scanner in=new Scanner(System.in);
    long num=in.nextLong();
    long a=12456778;
    if(num==a){
       int otp=OTP();
       System.out.println("Vaild number...");
       System.out.println("Your One Time Password is "+otp);
       }
       else
       {
       System.out.println("Your register number is wrong.");
   }
}
}     