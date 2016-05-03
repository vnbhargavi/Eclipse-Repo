trigger jobpostng on Job_Posting__c (after delete, after update)
{


List<Job_Posting_Site__c> st = [select Name,id from Job_Posting_Site__c];
list<Postion__c> pos = new List<Postion__c>();
for(Postion__c p:pos)
{

for(Job_Posting_Site__c j:st)
{

if(p.Status__c=='Open'&& p.Sub_status__c=='Approved')
{
if(p.Department__c=='Sales' )
{

list<Job_Posting__c> jp = new list<Job_Posting__c>();
	
 jp.add(new Job_Posting__c (Job_Posting_Site__c=j.Name,Postion__c=p.Name));
 insert jp;
}
}
}
}
}