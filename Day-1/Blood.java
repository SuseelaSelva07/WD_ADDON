import java.util.*;
class Blood {
    public static void main(String[] args) {
       System.out.println("what is your Age?");
       Scanner in=new Scanner(System.in);
       int a=in.nextInt();
       if(a<=18)
       {
          System.out.println("You're not eligible for Blood donation.");
       }
       if(a>=18)
       {
       System.out.println("what is your Weight?");
       int b=in.nextInt();
          if(b>=50)
       System.out.println("You're eligible for Blood donation.");
        else
            System.out.println("You're not eligible for Blood donation.");
       }
       }
    }