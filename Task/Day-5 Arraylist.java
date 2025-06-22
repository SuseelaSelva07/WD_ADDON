import java.util.ArrayList;
import java.util.Iterator;

public class StudentList {
    public static void main(String[] args) {
   
        ArrayList<String> students = new ArrayList<>();

        students.add("Taeshi");
        students.add("Kookie");
        students.add("Mochi");
        students.add("Yoongi");

        System.out.println("List of Students:");
        Iterator<String> iterator = students.iterator();
        while (iterator.hasNext()) {
            String student = iterator.next();
            System.out.println(student);
        }
    }
}
