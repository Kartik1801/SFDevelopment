public class SOQLIntro{
    public void main(){
        List<sObject> sobj = new List<sObject>();
        sobj = [Select Name, NumberOfEmployees from Account];

        for(sObject a: sobj){
            System.debug('Account Name: "' + a.get('Name') + '" Number Of Employees: "' + a.get('NumberOfEmployees') + '"');
        }
    }
}

SOQLIntro s = new SOQLIntro();
s.main();