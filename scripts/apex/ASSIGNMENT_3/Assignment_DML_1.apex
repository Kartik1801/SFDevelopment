public class Solution {
    public void solution1(){
        List<Student__c> studentList = [ SELECT Student_Name__c From Student__c WHERE Student_Name__c LIKE 'S%' ];
        Integer Counter = 1;
        for(Student__c student: studentList){
            student.Student_Name__c += ' Test ' + Counter;
            Counter++;
        }
        update studentList;
    }
    public void solution2(){
        List<Opportunity> oppList = new List<Opportunity>(); 
        List<Account> AccList = [SELECT Name, NumberOfEmployees, (SELECT ID, Name From Opportunities) FROM Account];
        for(Account Acc : AccList ){
            if(Acc.Opportunities.size() == 0){
                Opportunity opp = new Opportunity(Name = Acc.Name + ' First Opportunity', CloseDate= Date.today() + 30 , StageName = 'Prospecting', AccountID = Acc.ID);
                oppList.add(opp);
            }
            }
            insert oppList;
        }
    public void solution3(){
        // INSERTING ACCOUNT  
        Account acc = new Account(Name = 'ASSIGNMENT ACCOUNT');
        Database.insert(acc);
        // ASSOCIATING CONTACT WITH IT.
        Contact c = new Contact(FirstName = acc.Name, lastName = 'Contact', AccountId = acc.id);
        Database.upsert(c);
        Database.delete(acc);
        Database.undelete(acc);
    }
    public void solution4(){
        Account a = [ SELECT Name, ID FROM Account WHERE Name = 'ABC CAFE' ];
        a.NumberOfEmployees = 100;
        a.Website = 'cafe.abc.com';
        a.name += ' updated';
        a.Type = 'Prospect';
        Database.upsert(a);
    }
    public void solution5a(){
        List<Student__c> studentList = [ SELECT ID FROM Student__c WHERE Student_Name__c LIKE '_r%' ];
        System.debug(studentList);
        Database.delete(studentList);
        Database.emptyRecycleBin(studentList);
    }
    public void solution5b()
    {
        // TODO: FIND WAY TO FILTER HARD DELETED RECORDS FROM SOFT DELETED RECORDS IF AVAILABLE.
        Date date1 = Date.newInstance(2022, 08, 01);
        Date date2 = Date.newInstance(2022, 08, 31);
        Student__c[] deletedStudentList = [SELECT ID, Student_Name__c,Student__c.LastModifiedDate,Student__c.LastModifiedByID FROM Student__c WHERE isDeleted = true AND
                                           Student__c.LastModifiedDate >= :date1 AND Student__c.LastModifiedDate <= :date2  AND student__c.LastModifiedById = '0055i000004HmEJAA0' ALL ROWS];
        System.debug(deletedStudentList);
        // undelete deletedStudentList;
    }
    public void solution6(){
        Contact cont = new Contact(firstName = 'Abhijeet', lastName = 'AF');
        Account accRef = new Account(External_ID__c = 'ACC000001');
        cont.Account = accRef;
        Account acc = new Account(Name = 'AF', External_ID__c = 'ACC000001');
        Database.SaveResult[] result = Database.insert(new sObject[]{acc, cont});
        System.debug(result);
    }
    public void solution7(){
        Savepoint sp = Database.setSavepoint();
        List<Account> accList = new List<Account>();
        List<Contact> conList = new List<Contact>();
        List<Opportunity> oppList = new List<Opportunity>();
        List<OpportunityLineItem> oliList = new List<OpportunityLineItem>();
        Pricebook2 cpricebook = new Pricebook2(Name = 'Custom Pricebook1');
        cpricebook.IsActive = true;
        Product2 cproduct =  new Product2(Name = 'Custom Product1');
        cproduct.IsActive = true;
        Database.insert (cproduct);
        Database.insert (cpricebook);
        pricebook2 stdpricebook = [ SELECT NAME, ID FROM Pricebook2 where isStandard = true];
        System.debug(stdpricebook);
        PricebookEntry stdpricebookentry = new PricebookEntry();
        stdpricebookentry.Pricebook2Id = stdpricebook.id;
        stdpricebookentry.Product2Id = cproduct.id;
        stdpricebookentry.UnitPrice = 2000;
        stdpricebookentry.IsActive = true;
        stdpricebookentry.UseStandardPrice = false;
        Database.insert (stdpricebookentry);
        PricebookEntry cpricebookentry = new PricebookEntry();
        cpricebookentry.Pricebook2Id = cpricebook.id;
        cpricebookentry.Product2Id = cproduct.id;
        cpricebookentry.UnitPrice = 3000;
        cpricebookentry.IsActive = true;
        cpricebookentry.UseStandardPrice = false;
        Database.insert (cpricebookentry);
        for(integer i = 1; i <= 5; i++){
            Account AccRef = new Account(External_ID__c = 'ACC_000001' + i);
            Opportunity oppRef = new Opportunity(External_Id__c = 'OPP_000001' + i);
            OpportunityLineItem oli = new OpportunityLineItem(Product2id = cproduct.id, Opportunity = oppRef, TotalPrice = 3000,
            PricebookEntryId = cpricebookentry.id, Quantity = 1 );
            Opportunity opp = new Opportunity(Name = '_Assignment_Opportunity_' + i, CloseDate = Date.newInstance(2022,08,31), StageName = 'prospecting',
            Account = AccRef, Pricebook2Id = cpricebook.Id, External_Id__c = 'OPP_000001' + i);
            Contact cont = new Contact(FirstName = '_Assignment_Account_' + i , lastName = '_Assignment_Contact_' + i, Account = AccRef);
            Account Acc = new Account(Name = '_Assignment_Account_' + i, External_ID__c = 'ACC_000001' + i);
            accList.add(Acc);
            oppList.add(opp);
            conList.add(cont);
            oliList.add(oli);
        }
        Database.SaveResult[] accInsertStatus = Database.insert(accList);
        Database.insert(oppList);
        Database.insert(conList);
        Database.insert(oliList);
        for(Database.SaveResult s : accInsertStatus){
            if(s.isSuccess()){
                System.debug('Account '+ s.id + ' inserted Successfully. ');
            }
        }
        Database.rollback(sp);    
    }
    public void solution8(){    
        List<AggregateResult> ls = [ Select AccountId, Account.Name from Opportunity group by AccountId, Account.Name having count(id) = 2 ];
        List<ID> acc= new List<ID>();
        for(AggregateResult ar: ls){
            ID i = (id)ar.get('AccountID');
            acc.add(i);
        }
        System.debug(acc);
        List<Account> atd = [ SELECT ID FROM ACCOUNT WHERE ID IN :acc ];
        Database.delete(atd,false);
    }
    public void solution9(String objName){
        String query = 'SELECT COUNT() FROM ' + objName;
        Integer totalRecords = Database.countQuery( query ) ;
        System.debug(totalRecords);
    }    
    public void solution10(){
        Savepoint sp = Database.setSavepoint();
        List<Student__c> studentList = new List<Student__c>();
        for( Integer i = 1; i <= 100; i++){
            Student__c student = new Student__c();
            studentList.add(student);
        }
        Database.SaveResult[] results = Database.insert(studentList, false);
        Integer counter = 0;
        for(Database.SaveResult result : results){
            if(result.isSuccess()){
                counter++;
                System.debug(result.id + ' is added Successfully. ');
            }
        }
        System.debug(counter);
        if(counter < 80){
            Database.rollback(sp);
        }
    }
}

Solution s = new Solution();
// s.solution1();
// s.solution2();
// s.solution3();
// s.solution4();
// s.solution5a();
// s.solution5b();
// s.solution6();
// s.solution7();
// s.solution8();
// s.solution9('Student__C');
// s.solution10();