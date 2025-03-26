trigger AccountTriggerEx6 on Account (before delete) 
{
    for(Account acc:Trigger.old)
    {
        if(acc.Active__c=='Yes')
        {
            acc.addError('CANNOT DELETE ACTIVE RECORD');
        }
    }
}