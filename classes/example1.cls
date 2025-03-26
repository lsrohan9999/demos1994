public class example1 {
	Integer R;
    public integer A,B;
    
    public void Father()
    {
        Add();
        Sub();
        Mul();
        Div();
    }
     void Add()
    {
        R= A+B;
        System.debug('The addition is :' +R);
        sub();
    }
    
     void Sub()
    {
        R= A-B;
        System.debug('The Subtraction is :' +R);
        mul();
    }
    
     void Mul()
    {
        R= A*B;
        System.debug('The Multiplication is :' +R);
    }
    
     void Div()
    {
        R= A/B;
        System.debug('The Division is :' +R);
    }
}