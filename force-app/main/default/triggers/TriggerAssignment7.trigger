trigger TriggerAssignment7 on Opportunity (after update) {
    TriggerAssignment7HelperClass.createBackup(Trigger.old);
}