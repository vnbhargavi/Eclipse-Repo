public with sharing class helloworld {

public static void addhelloworld(Postion__c[] abc)
{
	for(Postion__c p:abc)
	
	{
	if(p.Department__c!='Finanace')
	p.Department__c='sales';
	}
}
}