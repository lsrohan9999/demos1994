trigger ContactTriggerEx2 on Contact (after  insert) 
{
    try{
    //if((trigger.isBefore) && (trigger.isInsert))
    //{
        List<Account> AL= new List<Account>();
    
        Map<Id,Account> contoacc = new Map<Id,Account>();
    
        for(Contact con:Trigger.New)
        {
            if(con.AccountId == null)
            {
                Account acc = new Account();
                acc.Name=con.LastName;
                acc.Phone=con.Phone;
                AL.add(acc);
                contoacc.put(con.Id,acc); // temporary linked con to acc
            }
        }
        if(!AL.isEmpty())
        {
            insert AL;
        
        
        //Update Contacts Account record
        List<Contact> ContoUpdate = new List<Contact>();
        for(Contact con: Trigger.New)
        {
            if(contoacc.containskey(con.Id))
            {
                Account relatedAccount = contoacc.get(con.Id);
                con.AccountId=relatedAccount.Id; //Link Con to Acc
                ContoUpdate.add(new Contact(Id=con.Id,AccountId=relatedAccount.Id));
              
            }
        }
        
        //To Update
        if(!ContoUpdate.isEmpty())
        {
            Update ContoUpdate;    
        }
        }
        // }
    }
    catch(FinalException e)
    {
        System.debug(e.getMessage());
    }
}