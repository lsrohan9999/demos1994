public class CL_Const_CreatAcc 
{
    Public Account ACC 	{get;set;}
    Public String Msg 	{get;set;}
    
    Public CL_Const_CreatAcc()
    {
        ACC=new Account();
    }
    
    Public Void CreateAcc()
    {
        try
        {
           //ACC=new Account();
           Insert ACC; 
           Msg='Account Insertion Success';
        }catch(Exception e)
        {
            Msg='Failed Insertion'+e.getMessage();
        }
    }
}