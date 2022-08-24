trigger TriggerAssignment8 on Opportunity (before update) {
    TriggerAssignment8HelperClass.preventStageChange(Trigger.new, Trigger.oldMap);
}   