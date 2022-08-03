public class SOSLClass3{

    SOSLClass3(){
        /*  
        SOSL Search Groups: 
            1. All Fields (default)

                List<List<sObject>> l = [ Find 'Volkswagen' IN ALL Fields returning Account(Name, NumberOfEmployees), Contact(firstName, lastName), 
                                            Opportunity(Name,  Amount), Student__c(Student_Name__c, Email__c) ];
                
                List<List<sObject>> l = [ Find 'Volkswagen' returning Account(Name, NumberOfEmployees), Contact(firstName, lastName), 
                                            Opportunity(Name,  Amount), Student__c(Student_Name__c, Email__c) ];
            
            2. Name Fields

                List<List<sObject>> l = [ Find 'Volkswagen' IN Name Fields returning Account(Name, NumberOfEmployees), Contact(firstName, lastName), 
                                            Opportunity(Name,  Amount), Student__c(Student_Name__c, Email__c) ];
            
            3. Email Fields
                
                // Wild Cards in SOSL: 1. * ( 1 or N Characters ) 2. ? ( Single Character )
                
                List<List<sObject>> l = [ Find '*kar*' IN Email Fields returning Account(Name, NumberOfEmployees), Contact(firstName, lastName), 
                                            Opportunity(Name,  Amount), Student__c(Student_Name__c, Email__c) ];
            
            4. Phone Fields

                List<List<sObject>> l = [ Find '*987*' IN Phone Fields returning Account(Name, NumberOfEmployees), Contact(firstName, lastName), 
                                            Opportunity(Name,  Amount), Student__c(Student_Name__c, Email__c) ];
            
            5. Sidebar Fields

                List<List<sObject>> l = [ Find 'Kar*' IN Sidebar Fields returning Account(Name, NumberOfEmployees), Contact(firstName, lastName), 
                                            Opportunity(Name,  Amount), Student__c(Student_Name__c, Email__c) ];
        
            
            System.debug(l);
        */
    }

}

SOSLClass3 s = new SOSLClass3();
