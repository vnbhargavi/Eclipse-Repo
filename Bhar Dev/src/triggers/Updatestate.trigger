trigger Updatestate on Case (before insert, before update)
 {
Id opp = [select id from Opportunity where name like 'Rosemary%' limit 1].id; 
for (case cas : Trigger.new)     
{  
   
if(cas.Description.contains('Rosemary'))
{ 
         cas.Opportunity1__c = opp;      
         } 
         }
         }