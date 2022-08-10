trigger TriggerAssignment3 on Account (before delete, before update, after delete, after update) {
    if(Trigger.isAfter && Trigger.isDelete){
        TriggerAssignment3HelperClass.createMergedAccountBackup(Trigger.old);
    }
}