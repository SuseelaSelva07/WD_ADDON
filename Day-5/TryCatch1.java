package program;
import java.util.Scanner;
//DIVIDE BY ZERO
public class TryCatch1{
    public static void main(String args[]){
        Scanner in=new Scanner(System.in);
        try{
            System.out.println("Enter the number:");
            int number=in.nextInt();
            int total=10/number;
            System.out.println("Total"+total);
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
}
