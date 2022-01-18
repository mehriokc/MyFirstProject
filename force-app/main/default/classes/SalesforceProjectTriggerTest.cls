@isTest
public class SalesforceProjectTriggerTest {
    //from test class:
    //we cannot read data from our org
    //we cannot write data to our org.
    //How  to test(test class) before insert trigger???
    //Example:we have SF before insert operation.How we can test it in test
    @istest
    static void insertMethod1(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Name__c = 'test project';
        sp.Status__c = 'New';

        test.startTest();

        insert sp;

        test.stopTest();

        System.assert(sp.Id != null);
        System.assertEquals('test project', sp.Name__c);

    }
    @isTest
    static void updateMethod1(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Name__c = 'test project';
        sp.Status__c = 'New';
        insert sp;

        test.startTest();
        sp.Status__c = 'In progress';
        update sp;
        test.stopTest();

        System.assert(sp.Id != null);
        System.assertEquals('test project', sp.Name__c);
    }

}
