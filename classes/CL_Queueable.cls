public class CL_Queueable implements Queueable
{
	public void execute(QueueableContext QA)
    {
        List<Account> AA =[Select ID,Name,Description from Account];
        List<Account> EMPAA= new List<Account>();
        
        for(Account EA: AA)
        {
            EA.Description ='Queueable APEX';
            EMPAA.add(EA);
        }
        UPDATE EMPAA;
    }
}