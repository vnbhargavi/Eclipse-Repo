public with sharing class worldhello {

public static void worldhello(candidate__c[] abc)
{
	for(candidate__c p:abc)
	
	{
	if(p.Last_name__c!='hello')
	p.Last_name__c='hello';
	}
}
}