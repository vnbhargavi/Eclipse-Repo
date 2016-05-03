trigger UpdateBMWlead on lead (before insert, before update) {
Id lea= [select id from bargavi1__BMW_Account__c where name like 'BMW%' limit 1].id;
    for (lead le : Trigger.new) 
    { 
    if(le.RecordTypeId=='01290000000QfWY')  
    {               le.bargavi1__BMW_Account__c = lea;
               }
           }
           }