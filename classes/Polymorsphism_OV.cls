public Virtual class Polymorsphism_OV 
{
	Public Virtual Void Rohan(String Nm,String Ph)
    {
        Account A=new Account();
        A.Name=Nm;
        A.Phone=Ph;
        Insert A;
        System.debug('Account Created');
    }
}