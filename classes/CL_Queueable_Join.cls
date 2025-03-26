public class CL_Queueable_Join implements Queueable
{
	public void execute(QueueableContext QAJ)
    {
        //Batch Apex
        CL_BatchClass_ex2 BA = new CL_BatchClass_ex2();
        Database.executebatch(BA);
        
        //Schedule Apex
        CL_Schedulable SA = new CL_Schedulable();
        String CRN='00 00 12 26 7 ? 2025';
        System.schedule('Example', CRN, SA);
        
        //Future Apex
        CL_FutureApex.METHOD3();
        
        //Queueable Apex
        CL_Queueable QA = new CL_Queueable();
        System.enqueueJob(QA);
    }
}