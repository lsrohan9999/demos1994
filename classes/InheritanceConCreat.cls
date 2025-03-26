public class InheritanceConCreat EXTENDS InheritanceAccCreat
{
 	public string FName {get;set;}
    public string LName {get;set;}
    public string CPhone {get;set;}
    public string Msg {get;set;}
    
    public void CreateCon()
    {
        try
        {
            Contact A= new Contact();
            A.FirstName=FName;
            A.Phone=CPhone;
            A.LastName=LName;
            INSERT A;
            Msg='Contact created succesfully';
        }
         catch(Exception E)
        {
           Msg=E.getMessage(); 
        }
        
    }
}