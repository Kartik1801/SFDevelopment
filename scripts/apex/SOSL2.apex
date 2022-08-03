public class SOSLClass2{
    SOSLClass2(){
        // Accessing Records of Objects returned by SOSL Statement.
        List<List<sObject>> s = [Find 'Volkswagen' returning Account(Name, NumberOfEmployees), Contact(firstName, lastName), Opportunity(Name, Amount)];
        List<sObject> a = s[0];
        List<sObject> c = s[1];
        List<sObject> o = s[2];

        System.debug(s);

        for(sObject acc: a){
            System.debug(acc.get('Name') + ': ' + acc.get('NumberOfEmployees'));
        }

        for(sObject con: c){
            System.debug(con.get('firstName') + ' ' + con.get('lastName') );
        }

        for(sObject opp: o){
            System.debug(opp.get('Name') + ': ' + opp.get('Amount') );
        }

    }
}
SOSLClass2 s = new SOSLClass2();