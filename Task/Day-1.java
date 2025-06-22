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

2. Simple intrest calculator using if

import java.util.Scanner;
public class SimpleInterestCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter amount: ");
        double amt = scanner.nextDouble();

        System.out.print("Enter rate of Interest: ");
        double rate = scanner.nextDouble();


        if (amt > 0 && rate > 0 ) {
            double interest = (amt * rate ) / 100;
            System.out.println("Simple Interest = " + interest);
        } else {
            System.out.println("Invalid input! Principal, Rate must be positive.");
        }

        scanner.close();
    }
}
