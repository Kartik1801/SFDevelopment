public with sharing class TriggerAssignment10HelperClass {
    public static void preventProductAddition(List<OpportunityLineItem> oliList){
        List<id> productsId = new List<ID>(); 

        for ( OpportunityLineItem oli : oliList){
            if(oli.UnitPrice < 1000 ){
                oli.addError('Cant Add');
            }
            productsId.add(oli.Product2Id);
        }
        
        Map<Id, Product2> productMap =  new Map<Id, Product2>([ SELECT NAME, DESCRIPTION FROM PRODUCT2 WHERE ID IN :productsId ]);
        for ( OpportunityLineItem oli : oliList){
            if(oli.Description == null){
                oli.Description = productMap.get(oli.Product2Id).Description;
            }
        }
    }
}
