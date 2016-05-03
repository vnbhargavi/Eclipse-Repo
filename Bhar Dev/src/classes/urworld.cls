public with sharing class urworld 
{
 public static void urworld(postion__c[] abc)
 {
 	for(postion__c a: abc)
 	{
 		if(a.location__c!='CA')
 		   a.location__c='NY';
 	}
 }
}