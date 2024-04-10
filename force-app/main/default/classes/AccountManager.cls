public class AccountManager {
    public static void updateAccountStatus(List<Account> accounts, String status) {
        for (Account acc : accounts) {
            acc.Rating = status;
        }
        update accounts;
    }
}