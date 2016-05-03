Public class learnclass
{
public string liststr{get;set;}
Public list<Selectoption> getdropdown()
{
List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('None','--None--'));
        options.add(new SelectOption('Account','Account'));
        options.add(new SelectOption('Contact','Contact'));
        options.add(new SelectOption('Lead','Lead'));
        
        return options;
}
}