public class Asssignment1 {
    public void Solution(list<list<string>> l){
        list<list<string>> finalList = new List<List<String>>();
        for(list<string> ls: l){
            list<String> tempList = new List<String>();
            for(String str: ls){
                list<string> newList = str.split(';');
                Set<String> strSet = new Set<String>();
                strSet.addAll(newList);
                newList.clear();
                newList.addAll(strSet);
                newList.sort();
                String newStr = String.join(newList, ';');
                tempList.add(newStr);
            }
        finalList.add(tempList);
        }
        System.debug(finalList);
    }
}
List<List<String>> l = new List<List<String>>();
List<String> l1 = new List<String>();
String a1 = 'a;b;a;v;c';
String b1 = 'x;x;y;c;q';
l1.add(a1);
l1.add(b1);
list<String> l2 = new List<String>(); 
String a2 = 'm;b;h;j;m';
String b2 = 'u;k;j;u';
l2.add(a2);
l2.add(b2); 
l.add(l1);
l.add(l2);
Asssignment1 sol1 = new Asssignment1();
sol1.solution(l);
