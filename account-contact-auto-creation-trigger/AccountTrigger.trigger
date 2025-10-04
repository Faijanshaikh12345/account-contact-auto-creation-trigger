trigger AccountTrigger on Account (after insert) {
    if(Trigger.isAfter && Trigger.isInsert){
        AccountHandler.createDefaultContact(Trigger.new);        
    }
}