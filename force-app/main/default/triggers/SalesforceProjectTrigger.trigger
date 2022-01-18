trigger SalesforceProjectTrigger on Salesforce_Project__c (after insert, before insert, before update, after update) {
    if(trigger.isUpdate && trigger.isBefore){
        SalesforceProjectTriggerHandler.validateProjectcompletion(Trigger.New, Trigger.NewMap, Trigger.OldMap);
    }
    if(trigger.isInsert && trigger.isAfter){
        map<id, Salesforce_Project__c> newMap = trigger.newMap;
        set<id> setIds = newMap.keySet();

        SalesforceProjectTriggerHandler.updateProjectDescriptionFuture(setIds);
        //call handler methodfrom here
        SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(trigger.new);
    }


    // if(trigger.isInsert && trigger.isAfter){
    //     //call handler method from here 
    //     SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(trigger.new);
    // }

}