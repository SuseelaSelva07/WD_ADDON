class BankAccount {
    int balance = 1000;

    synchronized void withdraw(int amount) {
        String user = Thread.currentThread().getName();
        System.out.println(user + " trying to withdraw $" + amount);
        if (balance >= amount) {
            try {
                Thread.sleep(500);
            } catch (Exception e) {}
            balance -= amount;
            System.out.println(user + " successfully withdrew $" + amount + ". Balance: $" + balance);
        } else {
            System.out.println(user + " failed to withdraw. Insufficient balance: $" + balance);
        }
    }
}

public class BankApp {
    public static void main(String[] args) {
        BankAccount account = new BankAccount(); // ✅ Corrected

        Runnable task = () -> account.withdraw(400); // ✅ Using BankAccount

        Thread t1 = new Thread(task, "User1");
        Thread t2 = new Thread(task, "User2");
        Thread t3 = new Thread(task, "User3");

        t1.start();
        t2.start();
        t3.start();
    }
}
