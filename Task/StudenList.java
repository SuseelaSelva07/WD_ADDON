import java.util.*;
class Student {
    int id;
    String name;
    Student(int id, String name) {
        this.id = id;
        this.name = name;
    }
     void display() {
        System.out.println("ID: " + id + ", Name: " + name);
    }
}
public class StudentList
{
    public static void main(String[] args) {
        ArrayList<Student> list = new ArrayList<>();
        list.add(new Student(1, "Taeshi"));
        list.add(new Student(2, "Kookie"));
        list.add(new Student(3, "Mochi"));
        System.out.println("Student List:");
        for (Student s : list) {
            System.out.println(s);  
        }
    }
}
