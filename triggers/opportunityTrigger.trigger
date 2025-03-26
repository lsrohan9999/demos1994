trigger opportunityTrigger on Opportunity (before insert,after insert,before update, after update,before delete, after delete,after undelete) {

    if(Trigger.isBefore && Trigger.isInsert)
    {
        System.debug('This will fire for Before Insert');
        System.debug('---Trigger.new---'+Trigger.new);
        System.debug('---Trigger.old---'+Trigger.old);
    }
    
    if(Trigger.isAfter && Trigger.isInsert)
    {
        System.debug('This will fire for After Insert');
        System.debug('---Trigger.new---'+Trigger.new);
        System.debug('---Trigger.old---'+Trigger.old);
    }
    
    if(Trigger.isBefore && Trigger.isUpdate)
    {
        System.debug('This will fire for Before Update');
        System.debug('---Trigger.new---'+Trigger.new);
        System.debug('---Trigger.old---'+Trigger.old);
    }
    if(Trigger.isAfter && Trigger.isUpdate)
    {
        System.debug('This will fire for After Update');
        System.debug('---Trigger.new---'+Trigger.new);
        System.debug('---Trigger.old---'+Trigger.old);
    }
    if(Trigger.isBefore && Trigger.isDelete)
    {
        System.debug('This will fire for Before Delete');
        System.debug('---Trigger.new---'+Trigger.new);
        System.debug('---Trigger.old---'+Trigger.old);
    }
    if(Trigger.isAfter && Trigger.isDelete)
    {
        System.debug('This will fire for After Delete');
        System.debug('---Trigger.new---'+Trigger.new);
        System.debug('---Trigger.old---'+Trigger.old);
    }
    if(Trigger.isAfter && Trigger.isUnDelete)
    {
        System.debug('This will fire for After UnDelete');
        System.debug('---Trigger.new---'+Trigger.new);
        System.debug('---Trigger.old---'+Trigger.old);
    }
}