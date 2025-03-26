//Account trigger to set rating as hot when industry id "Banking"
trigger EX1 on Account (before update, before insert) 
{
	for(Account acc : Trigger.new)
    {
        if(acc.Industry=='Banking')
        {
            acc.Rating='Hot';
        }else
            acc.Rating='Warm';
            
    }
    System.debug('Updated Rating to Hot');
}