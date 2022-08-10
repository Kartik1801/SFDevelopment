public with sharing class TriggerAssignment3HelperClass {
    public static void createMergedAccountBackup(List<Account> accList){
        List<Account_Backup__c> accountBackupList = new List<Account_Backup__c>();
        for(Account acc : accList){
            if(acc.MasterRecordId != null){
                Account_Backup__c accBackup = new Account_Backup__c(Name = acc.Name, Phone__c = acc.Phone);
                accountBackupList.add(accBackup);
            }
        }
        if(accountBackupList.isEmpty() == false){
            Database.SaveResult[] res  = Database.insert(accountBackupList);
        }
    }
}
