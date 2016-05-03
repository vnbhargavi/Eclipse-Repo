public class MyController1 {

   // public String acct { get; set; }

public Id selectedAccount { get; set; }
public List<Contact> contactsInformation { get; set; }
public List<Account> getMyAccountslist() {
return [SELECT Id, Name, AccountNumber FROM Account ORDER BY LastModifiedDate DESC LIMIT 10];
}
public void accountClicked() {
contactsInformation = [SELECT FirstName, LastName FROM Contact
WHERE AccountID = :selectedAccount];
}

}