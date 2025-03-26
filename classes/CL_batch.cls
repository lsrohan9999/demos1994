public class CL_batch implements Database.Batchable<sObject>
{
	public List<Account> Start(Database.BatchableContext BC)
    {
        List<Account> OL = [Select ID,Description from Account];
        Return OL;
    }
    
    public void execute(Database.BatchableContext SK, List<Account> MyList)
    {
       LIST<Account> OPBIN = new LIST<Account>();
       for(Account EL : MyList) 
       {
           EL.Description ='Testing for Batch Apex';
           OPBIN.add(EL);
       }
        Update OPBIN;
    }
    
    public void finish(Database.BatchableContext SK)
    {
        System.debug('BATCH APEX RUN SUCCESSFULLY');
    }
}