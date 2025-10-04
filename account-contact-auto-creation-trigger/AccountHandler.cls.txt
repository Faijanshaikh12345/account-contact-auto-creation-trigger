public class AccountHandler {

    public static void createDefaultContact(List<Account> newAccounts){
        List<Contact> contactsToInsert  = new List<Contact>();
        
        for(Account acc : newAccounts){
            Contact con = new Contact();
            con.LastName = acc.Name + ' Contact';
            con.AccountId = acc.Id;
            con.Email = acc.Name.replaceAll('[^a-zA-Z0-9]', '').toLowerCase() + '@gmail.com';
            con.Phone = acc.Phone;
            contactsToInsert.add(con);
        }   
        
        if(!contactsToInsert.isEmpty()){
             insert contactsToInsert;
        }
    }
    
}