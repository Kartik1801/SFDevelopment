public class SOQLClass1 {
    public void getRecord(String Name){
        List<sObject> s = new List<sObject>();
        s = [ SELECT firstName, lastName, email from Contact where firstName = :Name];
        for ( sObject obj : s ){
            System.debug('    '  + obj.get('firstName') + '    '  + obj.get('lastName') + '    ' + obj.get('email') );
        }
    }
}

/* 
SOQLClass1.getRecord('Rohit');
*/

    SOQLClass1 s = new SOQLClass1();
    s.getRecord('Rohit');
