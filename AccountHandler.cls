public class AccountHandler {
    public static Account insertNewAccount(String accountName) {
        try {
            Account acct = new Account(name = accountName);
            insert acct;
            return acct;
        } catch (DmlException e) {
            return null;
        }
        
    }

}