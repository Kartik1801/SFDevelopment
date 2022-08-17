trigger TriggerAssignment9 on Opportunity (before insert) {
    TriggerAssignment9HelperClass.preventCreation(Trigger.new);
}