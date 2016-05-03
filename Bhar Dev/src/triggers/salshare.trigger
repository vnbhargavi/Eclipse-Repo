trigger salshare on Salary__c (after insert) 
{

    if(trigger.isInsert)
    {
         
    
        list<Salary__Share> salShrs  = new list<Salary__Share>();
        //list<Postion__c>pos=[select id,Name from Postion__c];
        //list<Postion__c>p:=[select id,name from Postion__c ]
    
        Salary__Share deptvpshr;
        //Salary__Share hmShr;
         for(Salary__c sal1 : trigger.new)
         {
            deptvpshr = new Salary__Share();
            //hmShr = new Salary__Share();
                       
    
            deptvpshr.ParentId = sal1.Id;
            //hmShr.ParentId = sal1.Id;
            

    
            deptvpshr.UserOrGroupId = sal1.Dept_VP__c;
            //hmShr.UserOrGroupId = sal1.Postion__r.Hiring_Manager__c;
            //System.debug('to check id ' +sal1.Postion__r.Hiring_Manager__c );
            
            
    
            deptvpshr.AccessLevel = 'edit';
            //hmShr.AccessLevel = 'read';
            
            
    
            deptvpshr.RowCause = Schema.Salary__Share.RowCause.deptvp__c;
           // salShrs.RowCause = Schema.Salary__Share.RowCause.Postion__r.Hiring_Manager__c;
           
    
            salShrs.add(deptvpshr);
            //salShrs.add(hmShr);
        }
                 
            
                }
            }