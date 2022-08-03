public class DML2{
    DML2(){
        List<Opportunity> OppList = [SELECT Name, CloseDate FROM Opportunity];
        for(Opportunity opp : OppList){
            opp.CloseDate = Date.today() + 90;
        }
        update OppList;
    }
}

DML2 d = new DML2();