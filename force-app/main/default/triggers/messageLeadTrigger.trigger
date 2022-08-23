trigger messageLeadTrigger on Lead (after insert) {
    for ( lead l : Trigger.new){
        LeadMessageAPI.sendMessage(l.MobilePhone, l.FirstName, l.LastName, l.Company);
    }
}