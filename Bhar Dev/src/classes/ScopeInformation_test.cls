/****This is a test class for Scope information controller ***/

@istest
public class ScopeInformation_test
{

Public static testmethod void insertScopeinfo()
{

Account accobj = new account();
accobj.name = 'Account Name';
Accobj.SLA__c = 'Test';
insert accobj;

Opportunity oppObj = new Opportunity();
oppObj.name = 'Oppty Test';
oppObj.accountid = accobj.id;
oppObj.StageName = 'Scoping';
oppObj.CloseDate = system.today()+7;
insert oppObj;

Scope_Poc_Information__c scObj = new Scope_Poc_Information__c();
scObj.name = 'Test Scope';
scObj.Opportunity__c = oppObj.id;
scObj.Poc_Scope__c = 'This is for testing only';
insert scObj;
Test.setCurrentPage(Page.ScopeInformationPage);
ApexPages.currentPage().getParameters().put('opptyId',oppObj.id);

ScopeInformationController controller = new ScopeInformationController();
controller.getScopinfo();



}

}