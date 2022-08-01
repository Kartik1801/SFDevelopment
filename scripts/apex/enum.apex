public enum Seasons {
    Summer, Winter, Autumn,  Spring
}

public class enumPractice{
    public void main(){
        Seasons s = Seasons.Summer, a = Seasons.Spring;
        System.debug(a);
        System.debug(s);
    }
}

enumPractice e = new enumPractice();
e.main();