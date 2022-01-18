public with sharing class TechEventsHandler {
    public static void deleteTechEvents(List<Event__c> listEvents){
        if(!listEvents.isEmpty()){
            delete(listEvents);
        }
    }
}
