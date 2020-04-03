public class TestAccountCreation {
    public static void create() {
		Account acct = new Account();
		acct.Name = 'Acme';
		acct.Phone = '(415)555-1212';
		acct.NumberOfEmployees = 100;
        insert acct;
   }
}