trigger TriggerAssignment1 on Account (After insert, Before update) {
    if((Trigger.isBefore && Trigger.isUpdate ) || ( Trigger.isAfter && Trigger.isInsert) ){
        TriggerAssignment1HelperClass.opportunityCheckTrigger(Trigger.new);
    }
}