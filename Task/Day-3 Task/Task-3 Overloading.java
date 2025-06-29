import java.util.Scanner;
public class Overloading {
    public void sum(int a, int b) {
        Scanner scanner = new Scanner(System.in); 
        System.out.println("Enter the 1st value for Integer:");
        a = scanner.nextInt();
        System.out.println("Enter the 2nd value for Integer:");
        b = scanner.nextInt();
        System.out.println("Sum of Integers: " + (a + b)); 
    }
    public void sum(double a, double b) {
        Scanner scanner = new Scanner(System.in); 
        System.out.println("Enter the 1st value for Double:");
        a = scanner.nextDouble();  
        System.out.println("Enter the 2nd value for Double:");
        b = scanner.nextDouble();  
        System.out.println("Sum of doubles: " + (a + b)); 
    }
    public static void main(String[] args) {
        Overloading in = new Overloading();
        in.sum(0, 0);  
        in.sum(0.0, 0.0);
    }
}
