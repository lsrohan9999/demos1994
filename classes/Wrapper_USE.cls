public class Wrapper_USE 
{
	public Integer RollNo;
     
    Public void CreateStudentData()
    {
        wrapper_ex STD1 = New wrapper_ex();
        STD1.STNM='Rohan Serrao';
        STD1.STPH=78787878;
        
        //STD1.GRD=new List<Contact>();
        Contact G1=New Contact(FirstName='Luies',LastName='Serrao',Phone='76543',Email='louis.com');
        Contact G2=New Contact(FirstName='Matilda',LastName='Serrao',Phone='76543',Email='matilda.com');
        Contact G3=New Contact(FirstName='Rahul',LastName='Serrao',Phone='76543',Email='rahul.com');
        
        STD1.GRD.Add(G1);
        STD1.GRD.Add(G2);
        STD1.GRD.Add(G3);
        
        Account A=New Account(Name='INfosys',Phone='9876576',Industry='Technology');
        
        STD1.GRDOCCP=A;
        
        
        //2nd Student
        wrapper_ex STD2 = New wrapper_ex();
        STD2.STNM='Rohit Serrao';
        STD2.STPH=78787878;
        
        Contact G11=New Contact(FirstName='Luies',LastName='Serrao',Phone='76543',Email='louis.com');
        Contact G22=New Contact(FirstName='Matilda',LastName='Serrao',Phone='76543',Email='matilda.com');
        
		//STD2.GRD=new List<Contact>();        
        STD2.GRD.Add(G11);
        STD2.GRD.Add(G22);
        
        
        Account A2=New Account(Name='Dell',Phone='9876576',Industry='Technology');
        
        STD2.GRDOCCP=A2;
        
        //Student 3
        wrapper_ex STD3 = New wrapper_ex();
        STD3.STNM='Rahul Serrao';
        STD3.STPH=78787878;
        
        Contact G111=New Contact(FirstName='Luies',LastName='Serrao',Phone='76543',Email='louis.com');
        
        //STD3.GRD=new List<Contact>();
        STD3.GRD.Add(G111);
        
        
        Account A3=New Account(Name='Wipro',Phone='9876576',Industry='Technology');
        
        STD3.GRDOCCP=A3;
        
        //Create Student List
        
        List<wrapper_ex> STDLIST=new List<wrapper_ex>();
        STDLIST.add(STD1);
        STDLIST.add(STD2);
        STDLIST.add(STD3);
        
        System.debug(STDLIST);
        
        
    }
}