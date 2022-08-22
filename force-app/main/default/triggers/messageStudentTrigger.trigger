trigger messageStudentTrigger on Student__c (after insert) {
    for ( Student__c s: Trigger.new ){
        API_1.sendMessage(s.Student_Phone_Number__c, s.Student_Name__c);
    }
}