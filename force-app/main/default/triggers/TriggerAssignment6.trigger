trigger TriggerAssignment6 on Lead (after insert) {
    TriggerAssignment6HelperClass.convertPILeads(Trigger.new);
}