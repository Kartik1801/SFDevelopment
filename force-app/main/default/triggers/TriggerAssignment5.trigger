trigger TriggerAssignment5 on Opportunity (After insert, After update) {
        TriggerAssignment5HelperClass.setRating(Trigger.new);
}