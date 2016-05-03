trigger UpdateOpp on Case (before insert, before update) {

Id opp = [select id from opportunity where name like 'Rosemary%' limit 1].id;
    for (case cas : Trigger.new) {
        cas.bargavi1__Opportunity__c = opp;
}
 }