public class SOSLClass1{
    SOSLClass1(){

        List<List<sObject>> l = [ Find 'Volkswagen' Returning Account, Contact, Opportunity ];
    
        System.debug(l);
    }
}

SOSLClass1 s = new SOSLClass1();