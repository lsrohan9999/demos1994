public class AccCon_Lead_USE 
{
	List<AccCon_Lead> ACL;
    List<Lead> LL;
    
    public void CalcDupAccCon_Lead()
    {
        CreAcon();
        CreateLead();
        
        for(Lead EL: LL)
        {
            for(AccCon_Lead EACL: ACL)
            {
                IF((EL.Phone==EACL.APhone || EL.Phone==EACL.CPhone) && EL.FirstName==EACL.CFName)
                {
                 	System.debug('Doplicate Found in Lead '+EL.FirstName+' Is DUP with Account '+EACL.AName+' Realted to Contact '+EACL.CFName+' '+EACL.CLName);   
                }
            }
        }
        
    }
    
    List<AccCon_Lead> CreAcon()
    {
        List<Account> AL=[Select Id,Name,Industry, Phone From Account];
        List<Contact> CL=[Select Id,AccountId,FirstName,LastName, Phone From Contact];
        
        ACL=New List<AccCon_Lead>();
        for(Account EAD: AL)
        {
            for(Contact ECD: CL)
            {
                If(EAD.Id==ECD.AccountId)
                {
                    AccCon_Lead EACON= new AccCon_Lead();
                    EACON.AName=EAD.Name;
                    EACON.AInd=EAD.Industry;
                    EACON.APhone=EAD.Phone;
                    EACON.CFName=ECD.FirstName;
                    EACON.CLName=ECD.LastName;
                    EACON.CPhone=ECD.Phone;
                    ACL.add(EACON);
                }
            }
        }
        Return ACL;
    }
    
    List<Lead> CreateLead()
    {
        LL=[Select ID,Company, LastName,FirstName,Phone,Industry,Email from Lead];
        Return LL; 
    }
}