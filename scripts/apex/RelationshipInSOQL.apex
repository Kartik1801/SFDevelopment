public class RelationshipInSOQL{
    RelationshipInSOQL(){        
    /* 
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

     ACCESSING ITEMS IN PARENT TO CHILD RELATIONSHIP:

     List<Account> l = [ SELECT Name, NumberOfEmployees, (Select Name, Title from Contacts) from Account];
        System.debug(l);

        for(Account a: l){
            System.debug('Account : ' + a +' : ');
            for ( Contact c : a.Contacts ){
                System.debug('Contact: ' + c.Name + ' Title: ' + c.Title);
            }
        }

    ACCESSING ELEMENTS IN CHILD TO PARENT RELATIONSHIP:

    List<Contact> c = [Select FirstName, LastName, Account.Name, Account.Industry from contact];
    System.debug(c[0].Account.Name);
    }
 */
}

RelationshipInSOQL r = new RelationshipInSOQL();