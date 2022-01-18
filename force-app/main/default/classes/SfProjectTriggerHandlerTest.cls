@isTest
public with sharing class SfProjectTriggerHandlerTest {
    @istest
     static void testProjectInsert(){
         Salesforce_Project__c sp = new Salesforce_Project__c();
         sp.Name__c = 'test project';
         sp.Status__c = 'New';
         insert sp;
         list<salesforce_project__c> spList = new List<Salesforce_Project__c>();
         spList.add(sp);
         test.startTest();
         //test insert ticket method
         SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(spList);
         test.stopTest();

         //how to test if a ticket is inserted????
         //we will query soql on which object??/
         //soql on sp?
         Salesforce_Ticket__c insertedST =[SELECT ID, subject__c FROM Salesforce_Ticket__c where Salesforce_Project__c = :sp.id limit 1];
            system.assert(insertedST != null);
            System.assertEquals('Default ST', insertedST.Subject__c);
            //assert 

    }
    @istest
    static void testProjectUpdateStatusChekError(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
         sp.Name__c = 'test project';
         sp.Status__c = 'New';
         insert sp;

         //insett salesforce ticket
         Salesforce_Ticket__c st= new Salesforce_Ticket__c();
         st.Subject__c = 'Test ticket.';
         st.Salesforce_Project__c = sp.id;
         //update project status
         Test.startTest();
         try{
             sp.Status__c = 'Completed';
             update sp;
         }catch (Exception ex){
             system.assert(ex.getMessage().contains('FIELD_CUSTOM_VALIDATION_EXCEPTION'));
         }
         Test.stopTest();

    }
    @istest
    static void testProjectUpdateDescriptionFuture(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
         sp.Name__c = 'test project';
         sp.Status__c = 'New';
         insert sp;

         
         //update project status
         Test.startTest();
         SalesforceProjectTriggerHandler.updateProjectDescriptionFuture(new set<id>{sp.id});
         Test.stopTest();
         
         List<Salesforce_Project__c> spList = [ select id, name, description__c FROm Salesforce_Project__c];
         System.assert(spList != null);
         system.assert(spList.get(0).Description__c.contains('Future'));
            
         
      }
}
