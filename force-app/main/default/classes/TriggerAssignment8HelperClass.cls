public with sharing class TriggerAssignment8HelperClass {
    public static void preventStageChange(List<Opportunity> newOpp, Map<Id,Opportunity> oldOppMap){
       
        Map<ID, Opportunity> oppWithTasks = new Map<Id, Opportunity>([Select id, StageName, (Select id from Tasks) from Opportunity where id IN :newOpp]);
    
        for(Opportunity opp : newOpp){
            if(!opp.Name.contains('Backup')){
                if( oppWithTasks.get(opp.Id)?.Tasks.size() == 0 && opp.StageName != oldOppMap.get(opp.id).StageName){
                    System.debug('Reached 1');
                    if(opp.stageName != 'Closed Won' && opp.stageName != 'Closed Lost'){
                        System.debug('Reached 2');
                        opp.addError(' Cannot change stageName Untill a task is associated with it. ');
                    }
                }
            }
        }
    }
}
