trigger ContactTriggerEx5 on Contact (before insert,before update) 
{
    for(Contact con:Trigger.new)
    {
        if(con.AccountId==null)
        {
            con.addError('Please select an Account for the Contact');
        }
    }
}