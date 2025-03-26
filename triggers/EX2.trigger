//Create an account on contact creation
trigger EX2 on Contact (after insert) {
    List<Account> accList=new List<Account>();
    
    for(Contact con:Trigger.new)
    {
        if(con.AccountId==null){
            Account acc= new Account();
            acc.Name=con.LastName;
            acc.Phone=con.Phone;
            accList.add(acc);
        }
    }
        if(!accList.isEmpty()){
            insert accList;
        }
   
}