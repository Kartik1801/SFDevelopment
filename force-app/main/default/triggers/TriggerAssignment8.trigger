trigger TriggerAssignment8 on Opportunity (before update) {
    TriggerAssignment8HelperClass.preventStageChange(Trigger.newMap, Trigger.oldMap);
}   