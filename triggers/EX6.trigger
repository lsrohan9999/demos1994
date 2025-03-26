//avoid deletion of active account record
trigger EX6 on Account (before delete) 
{
   
	for(Account acc:Trigger.old)
    {
        if(acc.Active__c=='Yes')
        {
            acc.addError('Cannot delete Active Account');
        }
    }
    
}