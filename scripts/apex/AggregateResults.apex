class AggregateResultClass {
    AggregateResultClass(){
        AggregateResult ar1 = [Select Count(ID), SUM(Amount), AVG(Amount) from Opportunity];
        System.debug(ar1);
    }
}

AggregateResultClass a = new AggregateResultClass();