public with sharing class TriggerAssignment1HelperClass {
    public static void opportunityCheckTrigger(List<Account> accList){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Account acc: accList){
            if(acc.Opportunities.size() == 0){
                Opportunity opp = new Opportunity(Name = 'First Opportunity - ' + acc.Name, StageName = 'Prospecting', 
                                                  CloseDate = Date.newInstance(2022, 08, 31));
                opp.AccountID = acc.ID;
                oppList.add(opp);
            }
        }
        if(oppList.isEmpty() == false){
            Database.UpsertResult[] result =  Database.upsert(oppList);
        }
    }
}
