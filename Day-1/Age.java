import java.util.*;
class Age {
    public static void main(String[] args) {
       System.out.println("Enter the Your Age:");
       Scanner in=new Scanner(System.in);
       int a=in.nextInt();
       if(a>=18)
       System.out.println("You're eligible for voting");
    else
     System.out.println("You're not eligible for voting");
    }
}