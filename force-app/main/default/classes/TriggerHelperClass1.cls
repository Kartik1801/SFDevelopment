public with sharing class TriggerHelperClass1 {

    /* Account Trigger Helpers */
    public static void firstMethod(List<Account> accList)
    {
        System.debug(' Calling from firstMethod, New Records are: ');
        for(Account acc : accList)
        {
            System.debug(acc);
        }
    }

    public static void secondMethod(List<Account> accList ){
        System.debug(' Calling from secondMethod, New Records are: ');
        for(Account acc: accList){
            System.debug(acc);
        }
    }

}
