public with sharing class myworld 
{
public  static void myworld(postion__c[] abc )
{
	for(postion__c a:abc)
	{
		if(a.department__c!='sales')
		   a.department__c='finance';
	}
}
}