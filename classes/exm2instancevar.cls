public class exm2instancevar {
    
  

    public void Waiter(Integer x, Integer y, Integer z,String Choice)
    {
       if(Choice == 'Greater')
       {
           ChefGreater(x,y,z);
       }
        else if(Choice == 'Smaller')
        {
            ChefSmaller(x,y,z);
        }
        Else
        {
            System.debug('Sorry no Option allowed');
        }
    }
    
    void Chefgreater(Integer num1,Integer num2, Integer num3)
    {
        if(num1>num2 && num1>num3)
        {
            System.debug('Geater Number :'+num1);
        }
        else if(num2>num3 && num2>num1)
        {
            System.debug('Geater Number :'+num2);
        }
        else
        {
           System.debug('Geater Number :'+num3); 
        }
    }
    
    void Chefsmaller(Integer num1,Integer num2 ,Integer num3)
    {
        if(num1<num2 && num1<num3)
        {
            System.debug('Smaller Number :'+num1);
        }
        else if(num2<num3 && num2<num1)
        {
            System.debug('Smaller Number :'+num2);
        }
        else
        {
           System.debug('Smaller Number :'+num3); 
        }
        
    }

}