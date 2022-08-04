public class DML1 {
    DML1(){
        
        List<Account> AccList = new List<Account> ();
        
        /* 
            INSERT: 
            for(integer i = 1; i <= 20; i++){
                AccList.add(new Account(Name='Test Account - '+ i + ' Updated'));
            }
            insert AccList;

            UPDATE:
            AccList = [SELECT Name FROM Account WHERE Name LIKE 'Test%'];
            for (Account a : AccList ){
                a.Name += ' Updated';
            }
            update AccList;

            UPSERT:
            AccList = [SELECT Name, NumberOfEmployees FROM Account WHERE Name LIKE 'Test%' ];
            for (Account a : AccList ){
                a.NumberOfEmployees = 1200;
            }
            for(integer i = 1; i <= 50; i++){
                AccList.add(new Account (Name='Test - ' + i));
            }
            upsert AccList;

            DELETE: 
            AccList = [SELECT Name, NumberOfEmployees FROM Account WHERE Name LIKE 'Test%' ];
            delete AccList;    

            UNDELETE:
            AccList = [SELECT Name, NumberOfEmployees FROM Account WHERE Name LIKE 'Test%' AND isDeleted = true ALL ROWS ];
            undelete AccList;    

            MERGE: WILL DO LATER.
        */  
/* 
        List<Contact> contactList= new List<Contact>();
        List<Opportunity> OpportunityList= new List<Opportunity>();
        AccList = [SELECT Name, NumberOfEmployees FROM Account WHERE Name LIKE 'Test%' ];
            
            for (Account a : AccList ){
                a.NumberOfEmployees = 1200;
                for(integer i = 1; i <= 2; i++)
                {
                Opportunity o = new Opportunity(Name = 'Test Opportunity - ' + i, CloseDate= Date.today() + 30 , StageName = 'Prospecting', AccountID = a.ID);
                OpportunityList.add(o);
                }
                /* for(integer i = 1; i <= 2; i++)
                {
                Contact c = new Contact(firstName = 'Test Contact - ' + i, lastName = a.Name, AccountID = a.ID);
                contactList.add(c);
                } 
            }
             upsert contactList;
            upsert OpportunityList;
            upsert AccList;
 */
    }
}

DML1 d = new DML1();
