/****This is a test class for order form controller **/
@istest
public class Ordercontroller_Test{

public static testmethod void orderDataInsert()
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

Quote quoteObj = new quote();
quoteObj.name = 'Quote Test';
quoteObj.Opportunityid = oppObj.id;
//quoteObj.accountid = accobj;
insert quoteObj;

 ApexPages.currentPage().getParameters().put('id',quoteObj.id); 
ApexPages.StandardController sc = new ApexPages.standardController(quoteObj);
OrderFormController orderForm = new OrderFormController(sc);
orderForm.quantitystr = '5';
orderForm.save();
}

}