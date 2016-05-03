trigger UpdateAccountField on Opportunity (after insert, after update) {
Opportunity o1 = Trigger.New[0];
List<bargavi1__BMW_Account__c> a1 = [Select Id,bargavi1__Nurture__c,bargavi1__Opportunity_Segment__c from bargavi1__BMW_Account__c where Id = :o1.bargavi1__BMW_Account__c];
a1[0].bargavi1__Nurture__c = o1.bargavi1__Nurture__c;
a1[0].bargavi1__Opportunity_Segment__c = o1.bargavi1__Customer_Segment__c;
update a1;
}