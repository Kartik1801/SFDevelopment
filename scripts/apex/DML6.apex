// MERGE OPERATION
public class DML6{
    /* 
    Merge Statement:
        - Merge Statement can only be executed on sObject or list of sObject.
        
        - Different merging combination possible;
            
            - sObject with sObject
            - sObject with List<sObject>
            - sObject with ID
            - sObject with List<ID>
    
    */
    DML6(){
        List<Account> accList = [ SELECT Name FROM Account WHERE Name LIKE 'Merg%' LIMIT 3 ];
        Account a = accList[0]; 
        Account b = accList[1]; 
        Account c = accList[2];
        
        List<Account> mergeList = new List<Account>();
        
        mergeList.add(accList[1]);
        mergeList.add(accList[2]);
        
        merge a, b;             // for 2 records.
        merge a, mergeList;     // for 3 records.
        merge a c.id;           // with ID
    }
}

DML6 d = new DML6();
