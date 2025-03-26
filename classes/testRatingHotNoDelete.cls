@isTest
public class testRatingHotNoDelete 
{

    @isTest static void Method1()
    {
        Account acc= new Account(Name='Private Classes', Rating='Hot');
        Insert Acc;
        
        test.startTest();
        delete acc;
        test.stoptest();
    }
    @isTest static void Method2()
    {
        Account acc= new Account(Name='Private Classes', Rating='Warm');
        Insert Acc;
        
        test.startTest();
        delete acc;
        test.stoptest();
    }
    @isTest static void Method3()
    {
        Account acc= new Account(Name='Private Classes', Rating='Cold');
        Insert Acc;
        
        test.startTest();
        delete acc;
        test.stoptest();
    }
}