//Make email and phone fields mandatory for contact record
trigger EX3 on Contact (before insert,before update, after insert) {
    
    for(Contact con:Trigger.new)
    {
        if(con.Phone==null || con.Phone=='')
        {con.Phone.addError('Please enter Phone Number');}
        
        if(con.Email==null || con.Email=='')
        {con.Email.addError('Please enter Email Id');}
    }

}