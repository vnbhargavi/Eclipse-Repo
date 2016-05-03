trigger posttrig on Postion__c (after insert, after update) 
	
{
list<Postion__Share> pshrs = new list<Postion__Share>();

Postion__Share hmShr;
if(trigger.isInsert)
{

for(Postion__c pos : trigger.new)
{

if(pos.Status__c=='Open'&& pos.Sub_Status__c=='Approved')
{
	
hmShr = new Postion__Share();

hmShr.ParentId = pos.Id;

hmShr.UserOrGroupId = pos.Hiring_Manager__c;

hmShr.AccessLevel = 'read';

hmShr.RowCause = Schema.Postion__Share.RowCause.Hiring_Manager__c;

pshrs.add(hmShr);
}
else
{
	hmShr = new Postion__Share();
	hmShr.ParentId = pos.Id;
	hmShr.UserOrGroupId = pos.Hiring_Manager__c;
	hmShr.AccessLevel = 'None';
	hmShr.RowCause = Schema.Postion__Share.RowCause.Hiring_Manager__c;
	pshrs.add(hmShr);
}
}}}