public class DSOQL{
    DSOQL(String Obj, List<String> fields){
        String Query, Fieldlist = 'id'; 
        List<sObject> s = new List<sObject>();
        for ( String field: fields ){
            Fieldlist = Fieldlist + ', ' +  field ;
        }
        Query = 'SELECT ' + Fieldlist + ' FROM ' + obj;
        // preventing SQL Injection is necessary
        Query = String.escapeSingleQuotes(Query);
        s = Database.Query('Select Name,  NumberOfEmployees from Account');
        System.debug(s); 
    }
}


List<String> l = new List<String>{'Name', 'NumberOfEmployees'};
DSOQL d = new DSOQL('Account', l );
