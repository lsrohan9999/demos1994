/*Assign annual value as given below
Banking --> 500000
Finance --> 400000
Insurance --> 300000
Healthcare --> 200000
ELse --> 100000 */
trigger EX4 on Account (before insert,before update) 
{
	for(Account acc:Trigger.new)
    {
        if(acc.Industry=='Banking'){
            acc.AnnualRevenue=5000000;
        }
        else if(acc.Industry=='Finance'){
            acc.AnnualRevenue=4000000;
        }
        else if(acc.Industry=='Insurance'){
            acc.AnnualRevenue=3000000;
        }
        else if(acc.Industry=='Healthcare'){
            acc.AnnualRevenue=2000000;
        }
        else {
            acc.AnnualRevenue=1000000;
        }
    }
}