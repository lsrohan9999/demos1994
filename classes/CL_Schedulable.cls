public class CL_Schedulable implements Schedulable
{
	public void execute(SchedulableContext SC)
    {
        CL_SendAgainAgainMail SA = new CL_SendAgainAgainMail();
        SA.ToAdd='lsrohan9999@gmail.com';
        SA.Sub='Example 2';
        SA.EmBody='Hey rohan how are you doing';
        SA.SendEmailAAA();
    }
}