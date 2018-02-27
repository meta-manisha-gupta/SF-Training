public class AccountHandler {
    public static Account insertNewAccount(String accountName){
        Account newAccount = new Account();
        newAccount.Name = accountName;
        
        try{
            insert newAccount;
        }catch(DmlException ex){
            return null;
        }
        return newAccount;
    }
}