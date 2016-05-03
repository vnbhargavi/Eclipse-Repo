public class Stringtestclass
{
public static void Stringtest()
{
String strln = 'fesfsfssssssssssssssssdsfssssssssssdfgfgerfesfsfssssssssssssssssdsfssssssssssdfgfgerfesfsfssssssssssssssssdsfssssssssssdfgfgerfesfsfssssssssssssssssdsfssssssssssdfgfgerfesfsfssssssssssssssssdsfssssssssssdfgfgerfesfsfssssssssssssssssdsfssssssssssdfgfgerfesfsfssssssssssssssssdsfssssssssssdfgfgerfesfsfssssssssssssssssdsfssssssssssdfgfgerfesfsfssssssssssssssssdsfssssssssssdfgfger';
bargavi1__Length_Test__c lts = new bargavi1__Length_Test__c();
lts.Name = 'abc';
lts.bargavi1__test_length__c = strln.substring(0,255);
insert lts;
system.debug('@@@@@@@@@@@@@@@@@@@'+strln.substring(0,255));
bargavi1__StringTest__c sts = new bargavi1__StringTest__c();
sts.Name = 'def';
sts.bargavi1__Check_Length__c = strln.substring(256);
insert sts;
system.debug('------------>'+strln.substring(256));
}
}