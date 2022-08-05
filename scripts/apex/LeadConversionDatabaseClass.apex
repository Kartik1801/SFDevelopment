public class LeadConversionClass{
    LeadConversionClass(){
        Lead l = [ Select Name from Lead where Name LIKE 'Atul%Mittal' LIMIT 1 ];
        Database.LeadConvert lc = new Database.LeadConvert();
        lc.setLeadId(l.Id);
        lc.convertedstatus = 'Closed - Converted';
        lc.ownerid = UserInfo.getUserId();
        Database.LeadConvertResult lcr = Database.convertLead(lc); 
    }
}
LeadConversionClass lc = new LeadConversionClass();
