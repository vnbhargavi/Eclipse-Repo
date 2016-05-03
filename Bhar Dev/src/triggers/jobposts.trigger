trigger jobposts on Postion__c (after delete, after update) {
postionjobposts.postjd(trigger.new);
}