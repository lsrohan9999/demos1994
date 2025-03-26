public class Void_NonVoid 
{
    public String CmpName {get;set;}
    Public String LName  {get;set;}
    Public Integer Points {get;set;}
    
    
    public void CalPoints()
    {
        Points = CreaAcc() + CreaCon() + CreaLead();           
    }
    
    Integer CreaACC()
    {
        Integer Score;
        try
        {
            Account A=new Account();
            A.Name=CmpName;
            Insert A;
            Score= 250;
        }
        catch(Exception E)
        {
           Score=0;
        }
        Return Score;
    }
    
    Integer CreaCon()
    {
       Integer Score;
        try
        {
            Contact C=new Contact();
            C.LastName=LName;
            Insert C;
            Score= 300;
        }
        catch(Exception E)
        {
           Score=0;
        }
        Return Score; 
    }
    
    Integer CreaLead()
    {
      Integer Score;
        try
        {
            Lead L=new Lead();
            L.LastName=LName;
            L.Company=CmpName;
            Insert L;
            Score= 500;
        }
        catch(Exception E)
        {
           Score=0;
        }
        Return Score;  
    }
    
}