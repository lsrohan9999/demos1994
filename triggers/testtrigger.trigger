trigger testtrigger on Account (before insert) 
{
    Account a = Trigger.new[0];
    a.Name = a.Name + ' Limited';
}