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

            MERGE:
        */  

    }
}

DML1 d = new DML1();
