1. Print all even number between 1 and 100

import java.util.*;
class Evennumber {
    public static void main(String[] args) {
       System.out.println("Enter the starting number:");
       Scanner in=new Scanner(System.in);
       int a=in.nextInt();
     System.out.println("Enter the last number:");
     int b=in.nextInt();
     for(int i=a; i<b; i++)
     if(i%2==0)
     {
     System.out.println(i);
     }
    }
}

