public class controllertest{

    public controllertest(ApexPages.StandardController controller) {

    }



public pagereference golead()
{
 PageReference page = new PageReference('/00Q/o');
    page.setRedirect(true);
    return page;
}

}