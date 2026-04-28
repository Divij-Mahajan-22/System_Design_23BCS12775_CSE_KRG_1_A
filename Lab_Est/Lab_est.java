class TransactionService {
    void sendMoney(String from, String to, double amt) {
        System.out.println("Sent " + amt + " from " + from + " to " + to);
    }
}

class LoanService {
    double interest(String type, double amt) {
        return type.equalsIgnoreCase("home") ? amt * 0.08 :
                type.equalsIgnoreCase("personal") ? amt * 0.12 : 0;
    }
}

class NotificationService {
    void notifyUser(String msg) {
        System.out.println(msg);
    }
}

public class Main {
    public static void main(String[] args) {
        new TransactionService().sendMoney("A", "B", 5000);
        System.out.println(new LoanService().interest("home", 100000));
        new NotificationService().notifyUser("Done");
    }
}