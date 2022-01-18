public class TechEvents_DeleteOldEvents_Batch implements Schedulable, Database.Batchable<SObject>{
    
    // Cron expression that specifies run interval
    public static String CRON_EXP = '0 25 23 * * ? *';
    
    public void execute(SchedulableContext ctx){
        Database.executeBatch(new TechEvents_DeleteOldEvents_Batch());
    }

    public Database.QueryLocator start(Database.BatchableContext bc){
        Datetime twoMonthOldDateTime = System.now().addMonths(-2);
        return Database.getQueryLocator('SELECT Id, End_Date_Time__c, Live__c ' +
                                        'FROM Event__c ' +
                                        'WHERE Live__c = true AND End_Date_Time__c < :twoMonthOldDateTime');
    }

    public void execute(Database.BatchableContext bc, List<Event__c> lstObjRecs){ //For ex: 5000 will call the execute method 3 times
        TechEventsHandler.deleteTechEvents(lstObjRecs);
    }

    public void finish(Database.BatchableContext bc){
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setSubject('Status of Batch Class : TechEventsBatch');
        email.setSenderDisplayName('Batch Processing Status');
        email.setHtmlBody('Dear User, <br/> Batch processed');
        email.setToAddresses(getEmailAddresses());

        Messaging.SingleEmailMessage[] emailList = new List<Messaging.SingleEmailMessage>();
        emailList.add(email);
        Messaging.sendEmail(emailList, false);
    }

    // This method collects the emails of Public Group members, given public group name
    private List<String> getEmailAddresses() {
        List<String> idList = new List<String>();        
        List<String> mailToAddresses = new List<String>();

        Group g = [SELECT (SELECT userOrGroupId FROM GroupMembers) FROM Group WHERE Name = 'Daily Job'];

        for (GroupMember gm : g.groupMembers) {
            idList.add(gm.userOrGroupId);        
        }
        User[] usr = [SELECT email FROM user WHERE id IN :idList];
        for(User u : usr) {
            mailToAddresses.add(u.email);
        }
        return mailToAddresses;        
    }
}


// Annonimous execution code
// TechEvents_DeleteOldEvents_Batch deleteTE = new TechEvents_DeleteOldEvents_Batch();
// String sch = '0 30 23 * * ? *';
// //String sch = TechEvents_DeleteOldEvents_Batch.CRON_EXP;
// String jobID = system.schedule('Delete TE', sch, deleteTE);