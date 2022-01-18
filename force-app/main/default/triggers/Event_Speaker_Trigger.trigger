trigger Event_Speaker_Trigger on Event_Speaker__c (before insert, before update, after insert, after update) {
    
    // If statement filters out all triggers except Before Update and Before Insert
    // The code block run only for Before Update or Before Insert
    if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
        // Assign trigger.new to a list of Event_Speaker__c
        List<Event_Speaker__c> newESList = trigger.new;

        // Loop through the loop to check of any of the existing records has the speaker that is mentioned in trigger.new

       EventSpeakerTriggerHandler.DuplicateSpeakerValidation(newESList);
    }


}
