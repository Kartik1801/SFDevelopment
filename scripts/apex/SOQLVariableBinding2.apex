public class SOQLClass2 {
    public void main(String name){
        List <sObject> s = new List<sObject>();
        s = [ SELECT firstName, lastName, email from Contact where firstName = :name ];
        sObject obj = s[0];
        System.debug(obj);
        System.debug(s);
    }
}

SOQLClass2 s = new SOQLClass2();
s.main('Rohit');