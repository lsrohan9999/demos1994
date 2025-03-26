public class CL_SendAgainAgainMail 
{
    public string ToAdd {get;set;}
    public string Sub {get;set;}
    public string EmBody {get;set;}
    
    public void SendEmailAAA()
    {
        //Step 1: Initialisation Namespace
        Messaging.SingleEmailMessage SK= new Messaging.SingleEmailMessage();
        
		//Step 2: Get data
        List<String> toaddd = new List<String>{ToAdd};
        
        //Step 3: Compose Email 
        Sk.setToaddresses(toaddd);
        SK.setSubject(Sub);
        SK.setHtmlBody(EmBody);
        
        //Step 4: Send Email
        List<Messaging.Email> AK = new List<Messaging.Email>{SK};
        Messaging.sendEmail(AK);
    }
    
}