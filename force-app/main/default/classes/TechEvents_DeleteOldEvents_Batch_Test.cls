@istest
class TechEvents_DeleteOldEvents_Batch_Test {
    // This method is used to setup data for the test
    @TestSetup
    static void makeData(){
        List<Event__c> lstTechEvents = new List<Event__c>();
        Datetime newDateTime = System.now();
        Datetime oldDateTime = newDateTime.addMonths(-3);

        // Create an organizer
        Event_Organizer__c newEventOrganizer = new Event_Organizer__c();
        newEventOrganizer.Phone__c = '405 411 3265';
        newEventOrganizer.Email__c = 'evenOrganizer@gmail.com';
        newEventOrganizer.Name = 'Best Event Organizer';
        insert(newEventOrganizer);

        // Create 200 old and organized events, all eligible for deletion
        for(Integer i=0; i<200; i++){
            Event__c newEvent = new Event__c();
            newEvent.Organizer__c = newEventOrganizer.Id;
            newEvent.Name__c = 'Old Organized Event ' + i;
            newEvent.Start_Date_Time__c = oldDateTime;
            newEvent.End_Date_Time__c = oldDateTime + 1;
            newEvent.Max_Seats__c = 10;
            newEvent.Live__c = true;
            lstTechEvents.add(newEvent);
        }
        // Create 50 old and NOT organized events, all non-eligible for deletion
        for(Integer i=0; i<50; i++){
            Event__c newEvent = new Event__c();
            newEvent.Organizer__c = newEventOrganizer.Id;
            newEvent.Name__c = 'Old NOT Organized Event' + i;
            newEvent.Start_Date_Time__c = oldDateTime;
            newEvent.End_Date_Time__c = oldDateTime + 1;
            newEvent.Max_Seats__c = 10;
            newEvent.Live__c = false;
            lstTechEvents.add(newEvent);
        }
        // Create 50 new and organized events, all non-eligible for deletion
        for(Integer i=0; i<50; i++){
            Event__c newEvent = new Event__c();
            newEvent.Organizer__c = newEventOrganizer.Id;
            newEvent.Name__c = 'New Organized Event' + i;
            newEvent.Start_Date_Time__c = newDateTime;
            newEvent.End_Date_Time__c = newDateTime + 1;
            newEvent.Max_Seats__c = 10;
            newEvent.Live__c = true;
            lstTechEvents.add(newEvent);
        }
        // Create 50 new and NOT organized events, all non-eligible for deletion
        for(Integer i=0; i<50; i++){
            Event__c newEvent = new Event__c();
            newEvent.Organizer__c = newEventOrganizer.Id;
            newEvent.Name__c = 'New NOT Organized Event' + i;
            newEvent.Start_Date_Time__c = newDateTime;
            newEvent.End_Date_Time__c = newDateTime + 1;
            newEvent.Max_Seats__c = 10;
            newEvent.Live__c = false;
            lstTechEvents.add(newEvent);
        }

        Database.insert(lstTechEvents);
    }

   static testmethod void testSchedulableDeleteOldTechEvents() {
        Test.startTest();
            // Schedule the test job
            String jobId = System.schedule('Delete Old Tech Events',
            TechEvents_DeleteOldEvents_Batch.CRON_EXP,
                new TechEvents_DeleteOldEvents_Batch());

            // Get the information from the CronTrigger API object
            CronTrigger ct = [SELECT Id, CronExpression, TimesTriggered,
                NextFireTime
                FROM CronTrigger WHERE id = :jobId];

            // Verify the expressions are the same
            System.assertEquals(TechEvents_DeleteOldEvents_Batch.CRON_EXP,
                ct.CronExpression);

            // Verify the job has not run
            System.assertEquals(0, ct.TimesTriggered);

            // // Verify the next time the job will run
            // System.assertEquals('2022-09-03 00:00:00',
            //     String.valueOf(ct.NextFireTime));
            System.assertEquals(350,
                [SELECT id FROM Event__c].size());
        Test.stopTest();
   }
   static testmethod void testBatchableDeleteOldTechEvents() {
        Test.startTest();
        System.assertEquals(350,
            [SELECT id FROM Event__c].size());
        Database.executeBatch(new TechEvents_DeleteOldEvents_Batch());
        Test.stopTest();
        System.assertEquals(150,
        [SELECT id FROM Event__c].size());
        }
}