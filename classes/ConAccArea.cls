public class ConAccArea 
{
    public Decimal Len {get;set;}
    public Decimal Bred {get;set;}
    public String Msg	{get;set;}
    
    public void Cal_Area()
    {
        Decimal AR;
        AR=Len*Bred;
        If(AR<100)
        {
            try
            {
                Contact Con = New Contact();
                Con.LastName=''+AR+' Hi';
                INSERT CON;
                Msg='Contact Created Successfully';
            }
            catch(Exception E)
            {
                Msg=E.getMessage();
            }
        }
        else
        {
            try
            {
                Account ACC = New Account();
                Acc.Name=''+AR+' Technology';
                INSERT ACC;
                Msg='Account Created Successfully';
            }
            catch(Exception E)
            {
                Msg=E.getMessage();
            }
        }
    }
}