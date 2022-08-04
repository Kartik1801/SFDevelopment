public class Assignment3{
    Assignment3(list<Integer> l1, list<Integer> l2, list<Integer> l3){
        Set<Integer> s = new Set<Integer>(l1);
        s.retainAll(l2);
        s.retainAll(l3);
        System.debug(s);
    }
}

list<Integer> l1 = new List<Integer>{1, 4, 7, 8};
list<Integer> l2 = new List<Integer>{2,5,3,6,4,8,9};
list<Integer> l3 = new List<Integer>{9,5,2,7,4};
Assignment3 sol1 = new Assignment3(l1, l2, l3);