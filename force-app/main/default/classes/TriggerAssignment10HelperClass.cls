public with sharing class TriggerAssignment10HelperClass {
    public static void preventProductAddition(List<OpportunityLineItem> oliList){
        for ( OpportunityLineItem oli : oliList){
            if(oli.UnitPrice < 1000 ){
                oli.addError('Cant Add');
            }
            oli.Description = oli.Product2.Description;
        }
    }
}
