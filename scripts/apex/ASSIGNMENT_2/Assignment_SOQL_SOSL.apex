public class SOQLSOSLAssignment1{
    public void solution1(Date startingDate, Date endingDate ){
        List<Opportunity> OpportunityQueried = [ SELECT Name, CloseDate FROM Opportunity 
                                                 WHERE OwnerId = '0055i000005ZR5LAAW' AND 
                                                 CloseDate > :startingDate AND CloseDate < :endingDate];
        System.debug(OpportunityQueried);
    }
    public void solution2a(){
        List<Account> AccountQueried = [ SELECT Name, 
                                       ( SELECT Name FROM Opportunities ), 
                                       ( SELECT Name FROM Contacts ),
                                       (SELECT Name FROM Attachments) 
                                       FROM Account WHERE Name LIKE 'B%' ];
        System.debug(AccountQueried);
        for(Account acc : AccountQueried)
        {
            System.debug(acc);
            for(Contact cont: acc.Contacts)
            {
                System.debug(cont);
            }
            for(Opportunity opp : acc.Opportunities)
            {
                System.debug(opp);
            }
            for(Attachment att: acc.Attachments)
            {
                System.debug(att);        
            }
        } 
    }
    public void solution2b(){
        List<Opportunity> OpportunityQueried2 = [ SELECT Name, Account.Name FROM Opportunity WHERE Name LIKE '%A' ];
        System.debug(OpportunityQueried2);
        Account acc = [ SELECT Name, (Select Name from Contacts), (Select Name from Attachments) FROM Account where ID IN :OpportunityQueried2 ];    
        System.debug(opp.Name);
        System.debug(acc);/
        for(Contact cont: acc.Contacts)
        {
            System.debug(cont);
        }
        for(Attachment att: acc.Attachments)
        {
            System.debug(att);
        }
    }
    public void solution3(){
        ID CurrentUserID = UserInfo.getUserID();
        List<List<sObject>> l = [ FIND 'Test' Returning Account(Name, ID where ownerID = :CurrentUserID),
                                  Opportunity( Name, closedate Where CloseDate = THIS_FISCAL_YEAR ) ];
        System.debug(l);
    }
    public void solution4(){
        ID CurrentUserID = UserInfo.getUserID();
        List<List<sObject>> l = [ FIND 'Test' Returning Account( Name, ID where ownerID = :CurrentUserID ), 
                                  Opportunity( Name, closeDate Where CloseDate = THIS_FISCAL_YEAR ) ];
        List<Account> Acc = l[0];
        Map<ID, list<Contact>> contactMap = new Map<ID, List<Contact>>();        
        Map<ID, list<Opportunity>> opportunityMap = new Map<ID, List<Opportunity>>();        
        Map<ID, list<Attachment>> notesMap = new Map<ID, List<Attachment>>();        
        List<Account> All = [ SELECT Name, ( Select Name From Contacts ), 
                                ( Select Name from Opportunities ), ( Select Name from Attachments ) 
                                  FROM Account WHERE ID In :Acc ];
        for(Account Acct : All)
        {
                list<Contact> ContactList = new List<Contact>();
                list<Opportunity> OpportunityList = new List<Opportunity>();
                list<Attachment> AttachmentList = new List<Attachment>();
                for(Contact c: Acct.Contacts)
                {
                    ContactList.add(c);
                }
                contactMap.put(Acct.ID, ContactList);
                for(Opportunity c: Acct.Opportunities)
                {
                    OpportunityList.add(c);
                }
                opportunityMap.put(Acct.ID, OpportunityList);
                for(Attachment c: Acct.Attachments)
                {
                    AttachmentList.add(c);
                }
                notesMap.put(Acct.ID, AttachmentList);
        }  
        System.debug(contactMap);
        System.debug(opportunityMap);
        System.debug(notesMap); 
    }
    public void solution5a(){
        List<List<SObject>> output =  [ FIND 'Testing' IN Name Fields returning Account(Name), Contact(Name), Opportunity(Name) ];
        System.debug(output); 
    }
    public void solution5b(){
        List<string> s = new List<string>{ 'John', 'Jack', 'Will', 'David' };
        List<Student__c> studentList = [ SELECT Name, Student_Name__c FROM Student__c Where Student_Name__c IN :s 
                                         AND Registration_Date__c = THIS_FISCAL_QUARTER ];
        System.debug(studentList); 
    }
    public void solution5c(){
        List<Students_IN_Batch__c> l= [ SELECT Name, Student_ID__r.Student_Name__c, Batch__r.Name, Batch__r.Course__r.Name, Batch__r.Course__r.Faculty_for_the_course__r.Name FROM Students_In_Batch__c  Where Student_ID__r.Student_Name__c LIKE 'Kri%' AND Batch__r.Course__r.Name != 'Php' AND Batch__r.Course__r.Faculty_for_the_course__r.Name LIKE 'Kri%' ] ;
        System.debug(l);
        for(Students_in_Batch__c s : l ){
            System.debug(s.Name + ' ' + s.Student_ID__r.Student_Name__c + ' ' + s.Batch__r.Course__r.Name + ' ' + s.Batch__r.Course__r.Faculty_for_the_course__r.Name );
        } 
    }
    public void solution5d(String course, integer fee1, integer fee2){
        List<Student__c> studentList = [ SELECT Name, Student_Name__c, Courses__c FROM Student__c WHERE Courses__c = :course 
                                         AND Fees_Deposited__c > :fee1 AND Fees_Deposited__c < :fee2 ];
        System.debug(studentList);                                 
    }
}    

SOQLSOSLAssignment1 Solution = new SOQLSOSLAssignment1();

Solution.solution1(Date.newInstance(2022, 08, 01), Date.newInstance(2022, 08, 31));
Solution.solution2a();
Solution.solution2b();
Solution.solution3();
Solution.solution4();
Solution.solution5a();
Solution.solution5b();
Solution.solution5c();
Solution.solution5d('AWS', 0, 50000000);