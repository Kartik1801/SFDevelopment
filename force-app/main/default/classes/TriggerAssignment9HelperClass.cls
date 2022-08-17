public with sharing class TriggerAssignment9HelperClass {
    public static void preventCreation(List<Opportunity> oppList){
        Id currentUserId = UserInfo.getUserId();
        List<Opportunity> openOpportunityList = [ SELECT ID FROM Opportunity WHERE CreatedById = :currentUserId AND StageName NOT IN ('Closed Won', 'Closed Lost') ];
        If(openOpportunityList.size()>=2){
            for(Opportunity opp: oppList){
                opp.addError('Cant Create New Opportunity : Close Open Opportunities before creating New Opportunities.');
            }
        }
    }
}
