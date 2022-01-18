public with sharing class OpportunityTriggerHandler2 {

    //2-> Whenever new Opportunity is created with stageName as closed won or closed lost, then set closeDate as  today otherwise set closed date as 15 days from today.
//3-> When ever the stageName is modified to  closedWon then set the closeDate as today.
 public static void setClosedDate(List<Opportunity> oppList) {
    for (Opportunity eachOpp : oppList) {
        
        if(eachOpp.stageName == 'Closed Won' || eachOpp.stageName == 'Closed Lost' ){
            eachOpp.CloseDate= Date.today();
        }else{
            eachOpp.CloseDate= Date.today() + 15 ;
        }
    }
}
}
