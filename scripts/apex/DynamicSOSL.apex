public class DSOSL{
    DSOSL(){
        String s = 'FIND \'Kartik\' Returning Student__c ';
        List<List<sObject>> l = Search.query(s);
        System.debug(l);
    }
}

DSOSL s = new DSOSL();
