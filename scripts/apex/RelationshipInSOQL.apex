class RelationshipInSOQL{
    RelationshipInSOQL(){
        
        List<sObject> s = new List<sObject>();
        
        // parent to child:   Contacts (C) ->--- Account (P) ---<- Opportunity (C)
        
        s = [ SELECT Name, NumberOfEmployees, (Select firstName, lastName from Contacts), ( Select Name, amount from Opportunities ) from Account ];

        // child to parent: 

        s = [ SELECT firstName, lastName, Account.Name, Account.NumberOfEmployees FROM Contact ];

        // Multi-level Relationship: 

        // Child to Parent: ( ONLY UPTO 5 LEVELS INCLUDING QUERYING OBJECT ) 

        s = [ SELECT Name, Quantity, Opportunity.Name, Opportunity.Amount, 
              Opportunity.Account.Name, Opportunity.Account.NumberOfEmployees from OpportunityLineItem ];    

        System.debug(s);

    }
}
RelationshipInSOQL s = new RelationshipInSOQL();