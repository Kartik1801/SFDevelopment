public with sharing class TriggerAssignment5HelperClass {
    public static void setRating(List<Opportunity> oppList){
        List<Account> accList = [SELECT Rating, CustomerPriority__c FROM Account WHERE ID IN (SELECT AccountID FROM Opportunity WHERE ID IN :oppList AND Amount >= 10000)];
        for(Account acc : accList){
                acc.Rating = 'Hot';
                acc.CustomerPriority__c = 'High';
        }
        update accList;
    }
}
