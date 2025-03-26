public class mass_email_ex 
{
	public void SendMassEmail()
    {
        //Step 1: Initailize Messaging Namespace
        Messaging.SingleEmailMessage SEM=new Messaging.SingleEmailMessage();
        
        //Step 2: Get email address
        List<String> EA=new List<String>{'lsrohan9999@gmail.com'};
            
		//Step 3: Compose Email
		SEM.setToAddresses(EA);
		SEM.setSubject('EXAMPLE');
		SEM.setPlainTextBody('Hey Guys, How are you doing');

		//Step 4: Send Email
        List<Messaging.Email> ME=new   List<Messaging.Email>{SEM};
            Messaging.sendEmail(ME);
            
        
    }
}