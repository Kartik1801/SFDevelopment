public class Asssignment1 {
    Asssignment1(List<List<String>> l){
    set<String> s = new set<String>(); 
    for(List<String> ListItem: l){
        s.addAll(ListItem);
        ListItem.clear();
        ListItem.addAll(s);
        ListItem.sort();
        s.clear();
    }
    System.debug(l);
    }
}

List<List<String>> l1 = new List<List<String>>();
List<String> a1 = new List<String>{'a', 'b', 'a', 'v', 'c'};
List<String> b1 = new List<String>{'x', 'x', 'y', 'c', 'q'};
l1.add(a1);
l1.add(b1);
List<List<String>> l2 = new List<List<String>>();
List<String> a2 = new List<String>{'m', 'b', 'h', 'j', 'm'};
List<String> b2 = new List<String>{'u', 'k', 'j', 'u'};
l2.add(a2);l2.add(b2);
Asssignment1 sol1 = new Asssignment1(l1);
Asssignment1 sol2 = new Asssignment1(l2);