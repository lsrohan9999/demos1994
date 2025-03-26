trigger AccountTriggerEX4 on Account (before insert,before update) 
{
    
    for(Account acc: Trigger.new)
    {
        if(acc.Industry=='Banking')
        {
            acc.AnnualRevenue=5000000;
        }
        else if(acc.Industry=='Finance')
        {
            acc.AnnualRevenue=4000000;
        }
        
        else if(acc.Industry=='HealthCare')
        {
            acc.AnnualRevenue=3000000;
        }
        else
        {
            acc.AnnualRevenue=500000;
        }
    }

}