public class SOSLClass4{
    SOSLClass4(){
        List<List<sObject>> s = [ Find 'kartik*' returning Student__c(Student_Name__c, Email__c, Courses__c, Initial_Fees__C ) ];
        System.debug(s);
        // WHERE CLAUSE
        s = [ Find 'kartik*' returning Student__c(Student_Name__c, Email__c, Courses__c, Initial_Fees__C Where Courses__c IN ('Google App Engine', 'Frontend')) ];
        System.debug(s);

        // ORDER BY CLAUSE
        s = [ Find 'kartik*' returning Student__c(Student_Name__c, Email__c, Courses__c, Initial_Fees__C ORDER BY Initial_Fees__C )  ];
        System.debug(s);

        // LIMIT CLAUSE
        s = [ Find 'kartik*' returning Student__c(Student_Name__c, Email__c, Courses__c, Initial_Fees__C LIMIT 1 )  ];
        System.debug(s);
    }
}

SOSLClass4 s = new SOSLClass4();
