public with sharing class candi
{
public static void candid(Candidate__c[] can)
{

list<Candidate__c> can3 = [select Last_name__c,Email__c from Candidate__c] ;

for(Candidate__c d :can)
{
	for(Candidate__c a :can3)
	{
		if(d.Last_name__c == a.Last_name__c && d.Email__c==a.Email__c)
		d.adderror(' bad error');
		
	}
}

}}