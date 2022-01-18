public  class EventSpeakerTriggerHandler {
    public static void DuplicateSpeakerValidation (List<Event_Speaker__c> ListEventSpeakerTriggerNew)
    {
        for(Event_Speaker__c eachES: ListEventSpeakerTriggerNew){
            List<Event_Speaker__c> lstSpeakersEvent = [SELECT Event__c FROM Event_Speaker__c WHERE Speaker__c = :eachES.Speaker__c];

            // in the for loop, throw an error for the case when an SOQL query returns a record that has the speaker attached to it.
            if(lstSpeakersEvent.size()>0){
                eachES.addError('A speaker can be registered only for one event');
            }
        } 
    }
}

