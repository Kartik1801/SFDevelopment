public class Asssignment2 {
    Asssignment2(list<String> l, integer s){
        list<String> c = new List<String>();
        c.addAll(l);
        if(s == 0){
            for(integer i = 0; i < l.size(); i++)
            {
                c[ math.mod( 5 + i,  l.size() ) ] = l[i];
            }
        System.debug(l);
        System.debug(c);
        }
        else if(s == 1){
            for(integer i = 0; i < l.size(); i++)
            {
                c[ math.mod( l.size() + i - 7,  l.size() ) ] = l[i];
            }
        System.debug(l);
        System.debug(c);
        }
        else{
            System.debug('ERROR: INCORRECT ARGUMENTS!');
        }
    }
}

list<String> l1 = new List<String>{'a' , 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'};
Asssignment2 sol1 = new Asssignment2(l1, 0);
Asssignment2 sol2 = new Asssignment2(l1, 1);