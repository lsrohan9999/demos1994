public class CreateAcc_Prim 
{

    Public String Nm {get;set;}
    Public String Ph {get;set;}
    Public String Fx {get;set;}
    Public String Ind {get;set;}
    Public String Msg {get;set;}
    Public String Fsz {get;set;}
    Public String Fcl {get;set;}


public void CreateAcc()
{
    if(Ph == null || Ph.trim().length()==0  || ph.isNumeric()==false)
        {
        
        Msg='Account Creation failed, Enter valid Phone number ';
        fsz='25px';
        fcl='Red'; 
        }
    else {
    Try
    {
        Account A = New Account();
        A.Name=Nm;
        A.Industry=Ind;
        A.Fax=Fx;
        A.Phone=Ph;
        INSERT A;
        Msg='Account Created succcessfully : '+A.Id;
        fsz='25px';
        fcl='green'; 
        
        }
       
    catch(Exception E)
    {
        Msg='Account Creation failed with following error '+ E.getMessage()+' at line number'+e.getLineNumber();
        fsz='25px';
        fcl='Red';
    }
}
}
    
}