trigger TriggerAssignment6 on Lead (after insert, after update) {
    TriggerAssignment6HelperClass.convertPILeads(Trigger.new);
}