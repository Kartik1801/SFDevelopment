trigger helperClassPattern on Account (before insert, before update, before delete, after insert, after update, after undelete, after delete) {
    /*     
    Trigger Helper Class Design Pattern: 

        1. There should not be more than one trigger on a particular object.
        2. No logic should be inside the trigger. ( use logic with help of helper class)
     it helps in mantaining order of execution of triggers and eliminate redundancy of the code. 
    */
    if(Trigger.isBefore)
    {
        if(Trigger.isInsert)
        {
            TriggerHelperClass1.firstMethod(trigger.new);
            TriggerHelperClass1.secondMethod(trigger.new);
        }/* 
        else if(Trigger.isUpdate)
        {

        }
        else if(Trigger.isDelete)
        {

        } */
    }/* 
    else if(Trigger.isAfter)
    {
        if(Trigger.isInsert)
        {
            TriggerHelperClass1.firstMethod(trigger.new);
        }
        else if(Trigger.isUpdate)
        {

        }
        else if(Trigger.isDelete)
        {

        }
        else if(Trigger.isUndelete)
        {

        }
    } */

}