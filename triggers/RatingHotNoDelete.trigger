trigger RatingHotNoDelete on Account (before delete) 
{
    for(Account ACC: Trigger.old)
    {
        if(acc.Rating=='Hot')
        {
            acc.addError('Cannot delete account who is Hot');
        }
    }
}