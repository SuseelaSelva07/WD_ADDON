import java.util.Scanner;

public class Vowels {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String str =in.nextLine();
        int vowels=0, consonant= 0;
        for (int i=0;i<str.length(); i++) {
            char ch = str.charAt(i);
            if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' ||
                ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U') {
                vowels++;
            } else if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')) {
                consonant++;
            }
        }
        System.out.println("Number of vowels: " +
        vowels);
        System.out.println(" Number of Consonants: " + consonant);
    }
}
