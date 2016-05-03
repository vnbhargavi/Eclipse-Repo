trigger mytrig on Postion__c(before insert)
{
Postion__c pos = Trigger.new[0];
if(pos.Priority__c =='High')
{
pos.Status__c='New';
update pos;
}
}