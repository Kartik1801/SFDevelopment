trigger TriggerAssignment4 on Account (before delete) {
    if(Trigger.isBefore && Trigger.isDelete){
        TriggerAssignment4HelperClass.preventDeletion(Trigger.old);
    }
}