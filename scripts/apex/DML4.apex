public class DML4{
    DML4(){
        // Program to delete duplicate contacts:
        List<Contact> c = [ Select Name from Contact ];
        Map<String, ID> mmap = new Map<String, ID>();   
        for ( Contact con : c ){
            mmap.put(con.Name, Con.ID);
        }
        List <String> l = mmap.Values();
        List<Contact> d = new List<Contact>();
        for(Contact con : c ){
            if(!l.contains(con.ID)){
                d.add(con);
            }
        }
        delete d;
    }
}

DML4 d = new DML4();