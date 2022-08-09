trigger trigger1 on Account (before insert) {
 /*
   ************ ALWAYS BULKIFY TRIGGERS ***********
    Account a = Trigger.new[0];
    a.Name += ' Ltd.';
 */  
    for( Account a : Trigger.new ){
        a.Name += ' Ltd.';
    }
}
