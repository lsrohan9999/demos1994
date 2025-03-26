trigger ContactTrigger on Contact (before insert, before update) 
{
    for(Contact con: Trigger.new)
    {
        if(con.Phone=='' || con.Phone==null)
        {
            con.Phone.addError('Please Enter Phone Number');
        }
        if(con.Email=='' || con.Email==null)
        {
            con.Email.addError('Please Enter your Email-Id');
        }
    }

}