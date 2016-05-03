public class accountcontct{
public list<Account> accountlist{get;set;}
public list<Contact> contactlsit{get;set;}
public list<Account> getaccountlist(){
accountlist =[select id,name from account];
return accountlist;
}

}