public class testcontroller {
    public String account { get; set; }

public final Postion__c pos;
public testcontroller() {
pos = [select id, name from Postion__c where id =
:ApexPages.currentPage().getParameters().get('id')];
}
public Postion__c getPostion() {
return pos;
}
public PageReference save() {
update pos;
return null;
}
}