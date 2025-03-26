public class CL_FutureApex 
{
	public static void METHOD1()
    {
        System.debug('METHOD1 Executed ');
    }
    
    @future
    public static void METHOD2()
    {
        System.debug('METHOD2 Executed ');
    }
    
    public static void METHOD3()
    {
        System.debug('METHOD3-1 Executed ');
        METHOD1();
        System.debug('METHOD3-2 Executed ');
        METHOD2();
        System.debug('METHOD3-3 Executed ');
    }
}