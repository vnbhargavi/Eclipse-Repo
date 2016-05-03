trigger canditrig on Candidate__c (before insert, before update) {
candi.candid(trigger.new);
}