public class CL_BatchClass_ex2 implements Database.Batchable<sObject>
{

    public List<Contact> start(Database.BatchableContext AK)
    {
        List<Contact> LA =[Select ID, Description from Contact where Name='Putin'];
        Return LA;
    }
    
    public void execute(Database.BatchableContext AK, List<Contact> MyList)
    {
      
        for(Contact EC:MyList)
        {
           Database.Delete(EC,False);
        }
    }
     
    public void finish(Database.BatchableContext AK)
    {
        System.debug('Batch APEX SUCCESS');
      //  AsyncApexJob AP=[Select Status,JobItemsProcessed,TotalJobItem from AsyncApexJob were ID=: AK.getJobId() ];
        
    }
}