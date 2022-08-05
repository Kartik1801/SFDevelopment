public class ApexTransactionsAndRollbacks{
    public void execute(){
        Savepoint sp1 = Database.setSavepoint(); // Saving the current state of database.
        try{
            List<Account> accList = new List<Account>();
            for(Integer i = 11; i <= 20; i++){
                Account acc = new Account( Name = 'Transaction Test - ' + i, NumberOfEmployees = i );
                accList.add(acc);
            }
            Account acc = new Account();
            accList.add(acc);
            Database.insert(accList);
        }
        catch(Exception e){
            System.debug(e);
            Database.rollback(sp1);
        }

    }
}

ApexTransactionsAndRollbacks a = new ApexTransactionsAndRollbacks();
a.execute();
