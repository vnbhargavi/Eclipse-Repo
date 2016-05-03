trigger hellotrig on Postion__c (before insert, before update) {
helloworld.addhelloworld(Trigger.new);
}