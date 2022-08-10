trigger TriggerAssignment2 on Opportunity (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        TriggerAssignment2HelperClass.duplicateCheck(Trigger.new);   
    }
}