public with sharing class TriggerAssignment8HelperClass {
    public static void preventStageChange(Map<Id, Opportunity> newOppMap,Map<Id, Opportunity> oldOppMap){
        List<ID> oppIDList = new List<ID>();
        oppIDList.addAll(newOppMap.keySet());
        for(Id oppId : oppIDList){
            Opportunity oldOpp = oldOppMap.get(oppId);
            Opportunity newOpp = newOppMap.get(oppId);
            if(newOpp.Tasks.size() == 0 && newOpp.StageName != oldOpp.StageName){
                if(newOpp.stageName != 'Closed Won' && newOpp.stageName != 'Closed Lost'){
                    newOpp.addError(' Cannot change stageName Untill a task is associated with it. ');
                }
            }
        }
    }
}
