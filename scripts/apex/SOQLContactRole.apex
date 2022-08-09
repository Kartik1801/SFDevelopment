public class SOQLCR{
    SOQLCR(){
        List<Opportunity> oppList = [ SELECT Name, ID, (SELECT CONTACTID,CONTACT.firstName, ROLE FROM OPPORTUNITYCONTACTROLES) FROM opportunity ];
        for(Opportunity opp : oppList){
            for(OpportunityContactRole oppConRole: opp.OpportunityContactRoles){
                System.debug(oppConRole);
                System.debug(oppConRole.Contact.FirstName);
            }
        }
    }
}

SOQLCR s = new SOQLCR();