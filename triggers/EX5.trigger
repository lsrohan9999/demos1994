//each account should be associated with created contact
trigger EX5 on Contact (before insert, before update) {
	
    for(Contact con:Trigger.new)
    {
        if(con.AccountId==null)
        {
            con.AccountId.addError('Please select a Account to be linked');
        }
    }
}