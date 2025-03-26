trigger AccountTriggerEx1 on Account (before insert, before update) 
{
    if((Trigger.isBefore) && ((Trigger.isInsert)||(Trigger.isUpdate)))
   {
    for(Account acc : Trigger.new)
    {
        if(acc.Industry=='Banking' || acc.Industry=='Healthcare' )
        {
            acc.Rating = 'Hot';
        }
    }
    }
}