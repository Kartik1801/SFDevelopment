public class DatabaseResultClass{
    public void execute(){
            List<Account> accList = new List<Account>();
            for(Integer i = 11; i <= 20; i++){
                Account acc = new Account( Name = 'Transaction Test - ' + i, NumberOfEmployees = i );
                accList.add(acc);
            }
            Account acc = new Account();
            accList.add(acc);
            Database.SaveResult[] saveList = Database.insert(accList,false);
            for(Database.SaveResult s: saveList){
                If(s.isSuccess()){
                    System.debug(' I was Successful = ' + s.getId());
                }
                else{
                    System.debug(' I was Unsuccessful = ' + s.getId());
                    for(Database.Error der: s.getErrors())
                    {
                        System.debug(der.getStatusCode() + ' ' + der.getMessage());
                        System.debug('Fields affected by this insertion are: ' + der.getFields());
                    }
                }
            }
            
    }
}

DatabaseResultClass a = new DatabaseResultClass();
a.execute();
