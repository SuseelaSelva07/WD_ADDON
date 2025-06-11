package prgm;
import java.io.*;
class File {
    public static void main(String[] args) {
        String filename="Abstractclass.java";
        try(BufferedReader br=new BufferedReader(new FileReader(filename))) {
            String Line;
            if((Line=br.readLine()) !=null){
            System.out.println(Line);
            }
        } catch (Exception e) {
            System.out.println("File Not Found!! ");
        }
    }
}
