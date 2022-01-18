@isTest
public with sharing class OpportunityTriggerHandlerTest {
    @isTest static void TypeMethod(){
        Opportunity opp = new Opportunity ();
        Test.startTest();
        try{
            opp.Type = null;
            insert opp;

        } catch (Exception ex){
            System.assert(ex.getMessage().contains ( 'Populate Type field please'));

        }
        Test.stopTest();
        
       
    }
}
