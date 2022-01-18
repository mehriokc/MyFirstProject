public with sharing class OpportunityTriggerHandler {
   // 3-> Create a validation with the help of trigger which doesnot allow to update the stage of an opportunity once it is closed/won or closed/lost.For closed/won user should get error message as “Stage can not be changed from Closed/won” and For closed/lost user should get error message as “Stage can not be changed from Closed/Lost”.( 11/13/23)

   public static void opportunityStageUpdate(list<opportunity> lstOppNew, list<opportunity> lstOppOld, map<id, opportunity> mapOppNew, map<id, opportunity> mapOppOld) {
    map< id, opportunity> oppMapOld = mapOppOld;
    for (opportunity eachOpp : lstOppNew) {
        if(oppMapOld.get(eachOpp.id).StageName == 'Closed Won' && eachOpp.StageName != 'Closed Won' ){
        eachOpp.StageName.addError('Can not be changed from Closed Won' );
        }
        else if (oppMapOld.get(eachOpp.id).StageName == 'Closed Lost' && eachOpp.StageName != 'Closed Lost' ){
            eachOpp.StageName.addError('Can not be changed from Closed Lost');
            }
    }
}
//4-> Don’t allow an opportunity to be saved until and unless Type is populated. Do this with the help of trigger.
public static void opportunityType(list<opportunity> lstOppNew, list<opportunity> lstOppOld) {
    for (opportunity eachOpp : lstOppNew) {
        if(eachOpp.Type == null){
            eachOpp.Type.addError('Populate Type field please');
        }
    }
}

// 5-> Create two new fields in Opportunity object as below:
// a. Discount Percentage of type Percentage
// b. Discount Amount of type decimal
// Create a Trigger which Prints the Discount Amount and
// calculate Discount Amount as (Amount * Discount Percentage)/100 every time an opportunity is created or updated.
public static void OppDiscountCalculate(list<opportunity> newOppList, list<opportunity> oldOppList){
    for(opportunity eachOpp : newOppList){
        if(eachOpp.Amount != null && eachOpp.Discount_Percentage__c != null){
            eachOpp.Discount_Amount__c=(eachOpp.Amount * eachOpp.Discount_Percentage__c)/100;
            system.debug(eachOpp.Discount_Amount__c);
        }
        else if (eachOpp.Amount == null){
            eachOpp.Discount_Amount__c =null;
            eachOpp.Discount_Percentage__c =null;
        }
    }
}










}
    