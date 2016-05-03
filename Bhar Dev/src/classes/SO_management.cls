public class SO_management {

Account account;
OM_SalesOrder__c SO;
OM_Product__c PO;

public Account getAccount() {
if(account == null) account = new Account();
return account;
}


public OM_SalesOrder__c getSO() {
if(SO== null) SO = new OM_SalesOrder__c();
return SO;
}


public OM_Product__c getPO() {
if(PO== null) PO = new OM_Product__c();
return PO;
}





}