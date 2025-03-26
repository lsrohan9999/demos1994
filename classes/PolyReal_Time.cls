public class PolyReal_Time 
{
	Public void CreateAccCon(String Nm,String Ph)
    {
        Account A=new Account();
        A.Name=Nm;
        A.Phone=Ph;
        Insert A;
        System.debug('Account Created Succesfully');
    }
    
    Public void CreateAccCon(String FNm,String LNm,String Ph)
    {
        Contact C=new Contact();
        C.FirstName=FNm;
        C.LastName=LNm;
        C.Phone=Ph;
        Insert C;
        System.debug('Contact Created Succesfully');
    }
    
}