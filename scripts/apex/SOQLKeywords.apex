public class SOQLKeywords{
    public void main(){
        
        List<sObject> s =  new List<sObject>();
        
        List<String> nameList = new List<String>{ 'Bala', 'Paramjeet', 'Akash'};
        
        Set<String> nameSet = new Set<String>{ 'Bala', 'Paramjeet', 'Akash'};
        
        /* 

        IN:
        s = [ SELECT firstName , lastName, email FROM Contact WHERE firstName IN ('Bala', 'Paramjeet', 'Rohit') ];
        s = [ SELECT firstName , lastName, email FROM Contact WHERE firstName IN :nameList ];
        s = [ SELECT firstName , lastName, email FROM Contact WHERE firstName IN :nameSet ];
        
        NOT:
        s = [ SELECT firstName , lastName, email FROM Contact WHERE firstName NOT IN :nameList ];
        s = [ SELECT firstName , lastName, email FROM Contact WHERE firstName NOT IN :nameSet ];
        
        LIKE:
        s = [ SELECT Name FROM Account WHERE Name LIKE 'Genepoint' ];
        s = [ SELECT Name FROM Account WHERE Name LIKE '%Oil%' ];
        s = [ SELECT Name FROM Account WHERE Name LIKE '_Force' ];

        ORDER BY: 
        s = [ SELECT Name, Amount from Opportunity Order by Amount ];
        s = [ SELECT Name, Amount from Opportunity Order by Amount ASC ];
        s = [ SELECT Name, Amount from Opportunity Order by Amount DESC];
        s = [ SELECT Name, Amount from Opportunity Order by Amount ASC NULLS FIRST ];
        s = [ SELECT Name, Amount from Opportunity Order by Amount ASC NULLS LAST ];

        GROUP BY: 
        s = [ SELECT Count(ID), StageName FROM Opportunity GROUP BY StageName ];
        s = [ SELECT Count(ID), Max(Amount), StageName FROM Opportunity GROUP BY StageName ];

        LIMIT: 
        s = [ SELECT Name FROM Account LIMIT 10 ];
        s = [ SELECT Name FROM Account LIMIT 1 ];
        sObject a = [ SELECT Name FROM Account LIMIT 1 ];

        FOR UPDATE:
        s = [ SELECT Name FROM Account FOR UPDATE ];

        ALL ROWs:
        s = [ SELECT Name FROM Account ALL ROWS ];
        s = [ SELECT Name FROM Account WHERE isDeleted = true ALL ROWS ];

        */
        System.debug(s);
        
    }
}

SOQLKeywords s = new SOQLKeywords();
s.main();

