public with sharing class postionjobposts 
{
public static void postjd(Postion__c[] pos)
{
list<Job_Posting_Site__c> j2=[select id,Name from Job_Posting_Site__c];

//list<Postion__c>p1=[select Postion_Name from Postion__c];

list<Job_Posting__c> jp=[select Job_Posting_Site__c,Postion__c from Job_Posting__c];



for(Postion__c p : pos)
{
for(Job_Posting__c jp2:jp)
{
if(p.Status__c=='Open' && p.Sub_Status__c=='Approved')
{
if(p.Department__c=='IT' || p.Department__c=='Engineering')	
{

jp2.site_type__c='technical';

insert jp2;
}
else
{
jp2.site_type__c='non-technical';
}

}update jp;
}

}
}
}