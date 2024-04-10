@isTest
private class AccountManagerTest {
    @isTest
    static void testUpdateAccountStatus() {
        List<Account> accounts = new List<Account>();
        Account acc1 = new Account(Name='Test Account 1');
        Account acc2 = new Account(Name='Test Account 2');
        accounts.add(acc1);
        accounts.add(acc2);
        insert accounts;
        AccountManager.updateAccountStatus(accounts, 'Hot');
        
        for (Account acc : accounts) {
            System.assertEquals('Hot', acc.Rating, 'Expected rating is Hot');
        }
    }
}