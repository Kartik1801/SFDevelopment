public with sharing class TriggerAssignment6HelperClass {
    public static void convertPILeads(List<Lead> leadList){
        List<LeadConvert> leadConvertList = new List<LeadConvert>(); 
        for( Lead l : leadList ){
            if(l.LeadSource == 'Phone Inquiry' && l.IsConverted == false ){
                Database.LeadConvert lc = new Database.LeadConvert();
                lc.setLeadId(l.id);
                lc.donotcreateopportunity = true;
                lc.convertedstatus = 'Closed - Converted';
                Database.LeadConvertResult lcr = Database.convertLead(lc);
            }
        }
    }
}
