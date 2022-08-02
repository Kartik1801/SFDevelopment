public class SOSLClass1{
    SOSLClass1(){

        List<List<sObject>> l = [ Find 'Volkswagen' Returning Account(Name, NumberOfEmployees), Contact(firstName, lastName), Opportunity(Name, Amount) ];

        List<Account> a = l[0];
        List<Contact> c = l[1];
        List<Opportunity> o = l[2];
    
        System.debug(l);
        System.debug(a);
        System.debug(c);
        System.debug(o);

        for(Account Acc : a){
            System.debug(Acc);
        }

        for(Contact Con : c){
            System.debug(Con);
        }

        for(Opportunity opp : o){
            System.debug(Opp);
        }
    }
}

SOSLClass1 s = new SOSLClass1();