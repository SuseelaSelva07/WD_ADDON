import java.util.HashMap;
import java.util.Map;

public class Hashmap {
    public static void main(String[] args) {
        HashMap<String, Integer> studentMarks = new HashMap<>();

        studentMarks.put("Mochi", 85);
        studentMarks.put("Kookie", 90);
        studentMarks.put("Yoongi", 78);
        studentMarks.put("Taeshi", 92);

        System.out.println("Student Marks:");
        for (Map.Entry<String, Integer> entry : studentMarks.entrySet()) {
            System.out.println(entry.getKey() + " → " + entry.getValue());
        }

        int total = 0;
        for (int marks : studentMarks.values()) {
            total += marks;
        }
        double average = (double) total / studentMarks.size();
        System.out.println("\nAverage Marks: " + average);
    }
}
