public VIRTUAL class InheritanceAccCreat 
{
    public string Name {get;set;}
    public string Phone {get;set;}
    public string Ind {get;set;}
    public string Msg {get;set;}
    
    public void CreateAcc()
    {
        try
        {
            Account A= new Account();
            A.Name=Name;
            A.Phone=Phone;
            A.Industry=Ind;
            INSERT A;
            Msg='Account created succesfully';
        }
         catch(Exception E)
        {
           Msg=E.getMessage(); 
        }
        
    }
}