public class SumEvnOdd 
{
    public integer num {set;get;}
    public String CHZ  {set;get;}
    public integer RES {get;set;}
    
    public String Fcolor  {set;get;}
    public String Fsize  {set;get;}
    public String msz  {set;get;}
    
    integer count;
    
    public void MainMethod()
    {
        if(CHZ == 'EV')
        {
            calcSumEven();
            msz='The Sum of all Even Numbers upto the given number ' +num+' is '+Res;
            Fsize = '25px';
            Fcolor = 'Blue';
            if(res>100 && res<=500)
            {
                Fcolor = 'Red';
            }
            else if(res>500 && res<=1000)
            {
               Fcolor = 'Yellow'; 
            }
            else
            {
                Fcolor = 'Green'; 
            }
            
        }
        else if(CHZ == 'OD')
        {
            calcSumOdd();
            msz='The Sum of all Odd Numbers upto the given number ' +num+' is '+Res;
            Fsize = '25px';
            Fcolor = 'green';
        }
        else
        {
            Res=0;
            msz='Please contact NASA and not me';
            Fsize = '25px';
            Fcolor = 'Purple';
        }
    }
    
    void calcSumEven()
    {
       RES=0;
        count=0;
        while(count<=num)
        {
            RES=RES+Count;
            Count=Count+2;
        }
    }
    
    void calcSumOdd()
    {
        Res=0;
        count=1;
        while(count<=num)
        {
            Res=Res+Count;
            Count=Count+2;
        }
    }
}