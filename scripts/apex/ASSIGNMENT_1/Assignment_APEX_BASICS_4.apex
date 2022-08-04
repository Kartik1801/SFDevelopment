public class Assignment4{
    Assignment4(List<Integer> l){
        Integer maxElementSeen = 0;
        List<Integer> leaders = new List<Integer>(); 
        for(Integer i = l.size() - 1; i >= 0; i--){
            if(l[i] > maxElementSeen){
                leaders.add(l[i]);
                maxElementSeen = l[i];
            }
        }
        System.debug(leaders);
    }
}

List<Integer> l = new List<Integer>{149, 1, 3, 248, 2, 8, 70, 5}; 
Assignment4 sol = new Assignment4(l);