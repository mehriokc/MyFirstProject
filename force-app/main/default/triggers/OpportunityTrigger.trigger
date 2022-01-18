trigger OpportunityTrigger on Opportunity (before update, before insert) {
   // 3-> Create a validation with the help of trigger which doesnot allow to update the stage of an opportunity once it is closed/won or closed/lost.For closed/won user should get error message as “Stage can not be changed from Closed/won” and For closed/lost user should get error message as “Stage can not be changed from Closed/Lost”.
   if(trigger.isBefore && trigger.isUpdate){
       OpportunityTriggerHandler.opportunityStageUpdate(trigger.new, trigger.old, trigger.newMap,trigger.oldMap);

       //4-> Don’t allow an opportunity to be saved until and unless Type is populated. Do this with the help of trigger.

}
 if(trigger.isBefore && trigger.isUpdate || trigger.isInsert){
    OpportunityTriggerHandler.opportunityType(trigger.new, trigger.old);

// 5-> Create two new fields in Opportunity object as below:
// a. Discount Percentage of type Percentage
// b. Discount Amount of type decimal
// Create a Trigger which Prints the Discount Amount and
// calculate Discount Amount as (Amount * Discount Percentage)/100 every time an opportunity is created or updated.
}
 if(trigger.isBefore && trigger.isUpdate || trigger.isInsert){
    OpportunityTriggerHandler.OppDiscountCalculate(trigger.new,trigger.old);
 }







 //2-> Whenever new Opportunity is created with stageName as closed won or closed lost, then set closeDate as  today otherwise set closed date as 15 days from today.
  //3-> When ever the stageName is modified to  closedWon then set the closeDate as  today.
  if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate) ){
     
    OpportunityTriggerHandler2.setClosedDate(trigger.new);
     
  }



}

