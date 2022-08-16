public with sharing class TriggerAssignment4HelperClass {
    public static void preventDeletion(List<Account> accList){
        for ( Account acc: [ SELECT Id,Name, ( SELECT Id, Name, IsClosed FROM Opportunities WHERE IsClosed = False )
             FROM Account WHERE Id IN :accList ] ){
                if( acc.Opportunities.size() >  0 ){
                    acc.id.addError('Can\'t Delete an Account with Open Opportunity.');
                }
        }
    }
}
