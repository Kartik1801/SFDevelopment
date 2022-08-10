public with sharing class TriggerAssignment2HelperClass {
    public static void duplicateCheck(List<Opportunity> oppList){
        List<Opportunity> allOpportunities = [ SELECT NAME, AccountID FROM Opportunity];
        Map<String, List<Opportunity>> oppMap = new Map<String, List<Opportunity>>();
        for ( Opportunity opp : allOpportunities){
            if(oppMap.containsKey(opp.Name)){
                oppMap.get(opp.Name).add(opp);
            }
            else{
                oppMap.put(opp.Name, new List<Opportunity>());
                oppMap.get(opp.Name).add(opp);
            }
        }
        for(Opportunity opp: oppList){
            if(oppMap.containsKey(opp.Name)){
                for(Opportunity o: oppMap.get(opp.Name)){
                    if(o.AccountId == opp.AccountId){
                        Opp.Name += ' - Duplicate';
                        break;
                    }
                }
            }
        }
        System.debug(oppList);
        /* 
        List<Opportunity> duplicateOpportunityList = [ SELECT NAME, AccountID FROM Opportunity WHERE Name = :opp.Name AND AccountID = :opp.AccountId];
        for ( Opportunity opp : oppList ){
            for(Opportunity duplicateOpportunity: duplicateOpportunityList){
                if(opp.Id != duplicateOpportunity.id){
                    opp.Name += ' - Duplicate';
                    break;
                }
            }
        }
        */
    }
}
