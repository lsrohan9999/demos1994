public class AccConBoth 
{
    Public String AccName 	{get;set;}
    Public String LastName 	{get;set;}
    Public String Msg 		{get;set;}
    Public String Choice 	{get;set;}
    public String Fclr		{get;set;}
    public String Fsz		{get;set;}	
    
    public void CreateAccConBoth()
    {
        Account A=new Account();
        Contact C=new Contact();
        
        If(Choice=='ACC')
        {
            try
            {
            	
            	A.Name=AccName;
            	Insert A;  
                Msg='Account Created';
                fsz='25px';
                fclr='green';
            }
            catch(Exception e)
            {
                Msg='Account creation failed :'+e.getMessage();
                fsz='25px';
                fclr='red';
            }
        }
        else if(Choice=='CON')
        {
            try
            {
            	C.LastName=LastName;
            	Insert C;  
                Msg='Contact Created';
                fsz='25px';
                fclr='green';
            }
            catch(Exception e)
            {
                Msg='Account creation failed :'+e.getMessage();
                fsz='25px';
                fclr='red';
            }
        }
         
        else   if(Choice=='BT')
        {
            if(AccName=='' && LastName=='')
            {
                Msg='Please enter Both Account Name and Last Name';
                fsz='25px';
                fclr='red';
            }else if(AccName=='')
            {
                Msg='Please enter Account Name';
                fsz='25px';
                fclr='red';
            }else if(LastName=='')
            {
                Msg='Please enter Last Name';
                fsz='25px';
                fclr='red';
            }
            else
            {
              	A.Name=AccName;
           		Insert A; 
           		C.LastName=LastName;
           		C.AccountId=A.Id;
           		Insert C; 
           		Msg='Account and Contact Created linked with each other';
           		fsz='25px';
           		fclr='green';  
            }
           
        }
        Else
        {
            Msg='You are great...';
            fsz='25px';
            fclr='red';
        }
    }
}