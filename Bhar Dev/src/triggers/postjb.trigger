trigger postjb on Postion__c (after update) {



List<Job_Posting_Site__c> st = [select Name,id from Job_Posting_Site__c];
//postion__c> pos = new List<Poslist<Ption__c>();
for(Postion__c p:trigger.new)
{

for(Job_Posting_Site__c j:st)
{

if(p.Status__c=='Open'&& p.Sub_status__c=='Approved')
{
if(p.Department__c=='Sales' )
{

list<Job_Posting__c> jp = new list<Job_Posting__c>();
	
 jp.add(new Job_Posting__c (Job_Posting_Site__c=j.id,Postion__c=p.id));
 insert jp;
}
}
}
}
}