trigger satrig on Salary__c (before insert, before update) {


list <Salary__c> sal1 = trigger.new;
list <Postion__c> sal2 =[select id from Postion__c];
list <Salary__c> sal3 = [select Postion__c from Salary__c where Postion__c in: sal2] ;

for(Salary__c s : sal1)
{
    for(Salary__c a : sal3)
    {
        if(s.Postion__c == a.Postion__c)
        s.adderror(' duplicate error');
    }
}


}