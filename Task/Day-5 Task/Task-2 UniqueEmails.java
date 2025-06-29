import java.util.HashSet;

public class UniqueEmails 
{
    public static void main(String[] args) 
    {
        HashSet<String> emails = new HashSet<>();

        emails.add("taeshi@gmail.com");
        emails.add("kookie@gmail.com");
        emails.add("mochi@gmail.com");
        emails.add("yoongi@gmail.com"); 

        System.out.println("Unique Email Addresses:");
        for (String email : emails) 
        {
            System.out.println(email);
        }
    }
}
