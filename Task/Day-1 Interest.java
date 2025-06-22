2. Simple intrest calculator using if

import java.util.Scanner;
public class Interest {
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
