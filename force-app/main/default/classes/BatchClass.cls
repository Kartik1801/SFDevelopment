/* 
global with sharing class BatchClass  implements Database.Batchable<SObject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([Select Name, AnnualRevenue from Lead]) ;
    }
    global void execute(Database.BatchableContext bc, List <Lead> leadList){
        for (lead l : leadList){
            l.AnnualRevenue = 20000000;
        }
        update leadList;
    }
    global void finish(Database.BatchableContext bc){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(new String[] {'kartikdhawan009@gmail.com'});
        mail.setSubject('Batch Job Completed');
        mail.setPlainTextBody('Hey there, The batch job you started has been completed. ');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }
}
-----------------------------
BatchClass bc = new BatchClass();
Database.executeBatch(bc);
*/
global with sharing class BatchClass  implements Database.Batchable<SObject>, Schedulable {
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([Select Name, AnnualRevenue from Lead]) ;
    }
    global void execute(Database.BatchableContext bc, List <Lead> leadList){
        for (lead l : leadList){
            l.AnnualRevenue = 20000000;
        }
        update leadList;
    }
    global void execute(SchedulableContext sc){
        BatchClass bc = new BatchClass();
        Database.executeBatch(bc);       
    }
    global void finish(Database.BatchableContext bc){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(new String[] {'kartikdhawan009@gmail.com'});
        mail.setSubject('Batch Job Completed');
        mail.setPlainTextBody('Hey there, The batch job you started has been completed. ');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }
}
/*

*/