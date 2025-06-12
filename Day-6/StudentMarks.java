import java.util.HashMap;
import java.util.Map; 
class StudentMarks {
    public static void main(String[] args) {
        HashMap<String, Integer> studentMarks = new HashMap<String, Integer>();
        studentMarks.put("Tae", 95);
        studentMarks.put("JK", 97);
        studentMarks.put("Mochi", 95);

        int totalMarks = 0;
        for (int marks : studentMarks.values()) {
            totalMarks += marks;
        }
        System.out.println("Total Marks: " + totalMarks);
        double average = (double) totalMarks / studentMarks.size();
        System.out.println("Average Marks: " + average);
        for (Map.Entry<String, Integer> entry : studentMarks.entrySet()) {
            System.out.println(entry.getKey() + ": " + entry.getValue());
        }
    }
}
