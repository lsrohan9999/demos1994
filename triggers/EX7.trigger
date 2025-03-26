//Prevention of duplicate Accounts
trigger EX7 on Account (before insert, before update) 
{
	for(Account acc:Trigger.new)
    {
       integer recordCount=[select count() from Account where Name=:acc.Name];
        
        if(recordCount>0)
        {
            acc.addError('Duplicate record found, Cannot add Account of same Name');
        }
        acc.Active__c='yes';
    }
}