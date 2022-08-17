trigger TriggerAssignment7 on Opportunity (before update) {
    TriggerAssignment7HelperClass.createBackup(Trigger.old);
}