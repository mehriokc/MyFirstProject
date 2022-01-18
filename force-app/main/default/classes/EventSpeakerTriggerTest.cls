@isTest
public  class EventSpeakerTriggerTest {
    @istest
    static void insertmethod() {

        // Create an organizer
        Event_Organizer__c evtOrg = new Event_Organizer__c();

        evtOrg.Name = 'Event Organizer Name';
        evtOrg.Email__c = 'lina@gmail.com';
        evtOrg.Phone__c = '4053334554';
        insert(evtOrg);

        // Create an event

        Event__c evt = new Event__c();
        evt.Name__c = 'Party';
        evt.Organizer__c = evtOrg.Id;
        evt.Start_Date_Time__c = System.now();
        evt.Max_Seats__c= 100;
        evt.Live__c= True;
        insert(evt);


        // Create a speaker
        Speaker__c spr = new Speaker__c();
        spr.Name= 'Tom';
        spr.Email__c= 'tom@gmail.com';
        spr.Phone__c= '64598897766';
        insert(spr);
        
        // Create 1st Event_Speaker record
        Event_Speaker__c sprEvt = new Event_Speaker__c();
        sprEvt.Event__c = evt.Id;
        sprEvt.Speaker__c = spr.Id;
        insert(sprEvt);

        test.startTest();
        // Validate that creation of a duplicate Event_Speaker record is not allowed

        // Next 3 lines instantiate an Event_Speaker record 
        // and assign previously created Event.Id and Speaker.Id in order to make a duplicate Event_Speaker 
        Event_Speaker__c newEventSpeakerDuplicate = new Event_Speaker__c();
        newEventSpeakerDuplicate.Event__c = evt.Id;
        newEventSpeakerDuplicate.Speaker__c = spr.Id;
        
        //here my test will try to insert duplicate record of Event-Speaker.Expected is false result
        Database.SaveResult result = Database.insert(newEventSpeakerDuplicate, false);
        System.assert(!result.isSuccess());


        test.stopTest();
    }
}
