/* 
        1
       01
      010
     1010
    01010
*/
public class Pattern {
    public void myMethod(){
        integer c = 1;
        for(integer i = 0; i < 5; i++){
            for(integer k = 4; k > i; k--){
                System.debug(' ');
            }
            for(integer j = 0; j <= i; j++){
                if (c > 0)
                {
                    System.debug('1');
                    c -= 1;
                }
                else {
                    c += 1;
                    System.debug('0');
                }
            }
        }
    }
}
Pattern fc = new Pattern();
fc.myMethod();