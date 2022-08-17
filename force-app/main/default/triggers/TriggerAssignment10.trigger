trigger TriggerAssignment10 on OpportunityLineItem (before update, before insert ) {
    TriggerAssignment10HelperClass.preventProductAddition(Trigger.new);
}