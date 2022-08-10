trigger TriggerAssignment1 on Account (After insert, After update) {
    if(Trigger.isAfter && ( Trigger.isInsert || Trigger.isUpdate )){
        TriggerAssignment1HelperClass.opportunityCheckTrigger(Trigger.new);
    }
}