public class myController {

    private final Account act;
    
    // The extension constructor initializes the private member  
    
    // variable acct by using the getRecord method from the standard  
    
    // controller.  
    
    public myController(ApexPages.StandardController stdController) {
        this.act = (Account)stdController.getRecord();
    }

    public String getGreeting() {
        return 'Hello ' + act.name + ' (' + act.id + ')';
    }
}