public with sharing class TriggerAssignment7HelperClass {
    public static void createBackup(List<Opportunity> oppList){
        List<Opportunity> opportunityBackup = new List<Opportunity>();
        List<Opportunity> existingBackup = [ SELECT  ID, Name FROM Opportunity WHERE Name LIKE '%Backup' ];
        Set<String> s = new Set<String>();
        Map<String, Opportunity> m = new Map<String, Opportunity>();
        for(Opportunity bkps: existingBackup ){
            bkps.Name = bkps.Name.removeEnd(' Backup');
            s.add(bkps.Name);
            m.put(bkps.Name, bkps);
        }
        for(Opportunity opp : oppList){
            if(!opp.Name.contains('Backup')){
                if(!s.contains(opp.Name)){
                    opp.clo
                    Opportunity o = opp.clone();
                    o.Name += ' Backup';
                    opportunityBackup.add(o);
                }
                else{
                    Opportunity o = opp.clone();
                    o.Name += ' Backup';
                    o.id = m.get(opp.Name).id;
                    opportunityBackup.add(o);
                }
            }            
        }
        upsert opportunityBackup;
    }
}
