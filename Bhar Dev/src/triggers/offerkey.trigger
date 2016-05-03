trigger offerkey on Offer__c (before insert, before update) 
{
//list<Offer__c> off1=trigger.new;	
for(Offer__c o:trigger.new)
{
list<Job_Application__c> job=[select Status__c,Stage__c from Job_Application__c];
//list<Job_Application__c>jb2=[select id from Job_Application__c];
//list<Offer__c> off2=[select Job_Application__c from Offer__c where Job_Application__c in:job];


for(Job_Application__c j:job)
{
j.Stage__c='Offer Extended';
j.Status__c='Hold';
	
update j;
}
}
}