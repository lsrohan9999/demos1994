trigger CandidateTriggerEx7 on Candidate__c (before insert,before update) 
{
    for(Candidate__c cand:Trigger.new)
    {
        Integer recordcount =[Select Count() from Candidate__c where Last_Name__c=:cand.Last_Name__c];
        
        if(recordcount>0)
        {
            cand.addError('Duplicate found');
        }
    }
}