trigger Updatestatus on Case (before insert, before update)
 {
Id opp = [select id from Opportunity where name like 'Anna%' limit 1].id; 
for (case cas : Trigger.new)     
{  
   
if(cas.Description.contains('Anna'))
{ 
         cas.Opportunity1__c = opp;      
         } 
         }
         }