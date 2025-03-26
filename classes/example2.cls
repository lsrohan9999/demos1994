public class example2 
{
    public String Choice {get;set;}
    Public Integer num1 {set;get;}
    Public Integer num2 {set;get;} 
    Public Integer num3 {set;get;}
    Public String Result {set;get;}

    public void Waiter()
    {
       if(Choice == 'GR')
       {
           ChefGreater();
       }
        else if(Choice == 'SM')
        {
            ChefSmaller();
        }
        Else
        {
            Result='Sorry no Option allowed';
        }
    }
    
    void Chefgreater()
    {
        if(num1>num2 && num1>num3)
        {
            Result='Geater Number :'+num1;
        }
        else if(num2>num3 && num2>num1)
        {
            Result='Geater Number :'+num2;
        }
        else
        {
           Result='Geater Number :'+num3; 
        }
    }
    
    void Chefsmaller()
    {
        if(num1<num2 && num1<num3)
        {
            Result='Smaller Number :'+num1;
        }
        else if(num2<num3 && num2<num1)
        {
            Result='Smaller Number :'+num2;
        }
        else
        {
			Result='Smaller Number :'+num3;
        }
        
    }

}