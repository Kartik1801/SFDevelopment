// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents


public class FirstClass {
    public void myMethod(){
        System.debug('" Hello World !"');
        List<Integer> i1 = new List<Integer>{1,2,3};
        List<Integer> i2 = new List<Integer>{1,2,3};
        List<Integer> i3 = new List<Integer>{1,2,3};
        
        List<List<Integer>> m = new List<List<Integer>>();
        m.add(i1);
        m.add(i2);
        m.add(i3);

        System.debug(m);
    }
}
FirstClass fc = new FirstClass();
fc.myMethod();