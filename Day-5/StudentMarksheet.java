import java.util.Scanner;
public class StudentMarksheet {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter student name: ");
        String name = sc.nextLine();

        System.out.print("Enter marks in Subject 1: ");
        int m1 = sc.nextInt();
        System.out.print("Enter marks in Subject 2: ");
        int m2 = sc.nextInt();
        System.out.print("Enter marks in Subject 3: ");
        int m3 = sc.nextInt();

        int total = m1 + m2 + m3;
        double average = total / 3.0;
        String result = (m1 >= 40 && m2 >= 40 && m3 >= 40) ? "Pass" : "Fail";

        String grade;
        if (average >= 90) grade = "A+";
        else if (average >= 80) grade = "A";
        else if (average >= 70) grade = "B";
        else if (average >= 60) grade = "C";
        else if (average >= 40) grade = "D";
        else grade = "F";

        System.out.println("\n--- Student Result ---");
        System.out.println("Name: " + name);
        System.out.println("Total Marks: " + total);
        System.out.printf("Average: "+average);
        System.out.println("\nGrade: " + grade);
        System.out.println("Result: " + result);
    }
}
