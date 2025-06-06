import java.util.*;
class ATM {
    public static void main(String[] args) {
        System.out.println("Scan your card...");
        System.out.println("Enter your withdrawn amount...");
        Scanner in=new Scanner(System.in);
        int a=in.nextInt();
        if(a>=500){
            System.out.println("Enter your pin number...");
            int b=in.nextInt();
            if(b==765432){
                System.out.println("You're withdrawn successfully");
            }
                else {
                System.out.println("Invalid pin number");
            }
        }
        else {
                System.out.println("Insufficient Amount...");
                System.out.println("Your Amount is below 500...");}
            }
            }
        