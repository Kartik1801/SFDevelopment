class AggregateResultClass {
    AggregateResultClass(){

        AggregateResult ar1 = [Select Count(ID), SUM(Amount), AVG(Amount) from Opportunity];
        
        // with alias
        AggregateResult ar2 = [Select Count(ID) TotalNoOfOpportunity, SUM(Amount) TotalAmount, AVG(Amount)  AverageAmount from Opportunity];
        
        System.debug(ar1);
        System.debug(ar2);
    }
}

AggregateResultClass a = new AggregateResultClass();