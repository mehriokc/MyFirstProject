public with sharing class dmlDemo1 {
    public static void dmlInsertDemo_stndObj() {
        //1. instance
        Account acc = new Account();

        //2. set field value
        acc.Name = 'SoftInnovas3112';
        //3. set any other fields 
        acc.AccountNumber = 'FALCNS999';
        acc.Active__C = 'Yes';

        insert acc;
    }

    public static VOID dmlInsertDemo_cstmObj() {
            Salesforce_Project__c sp = new Salesforce_Project__c();
            sp.Name__c = 'Teach Apex Programing ';
            sp.Status__c = 'New';

            // final
            system.debug('BEFORE INSERT sp = ' +  sp);
            insert sp;
            system.debug('AFTER INSERT sp = ' + sp);

        }


    public static void dmlUpdateDemo1_stndObj() {
        //1. instance
        Account acc = new Account();

        //2. set field value
        acc.Name = 'SoftInnovas3112';
        //3. set any other fields 
        acc.AccountNumber = 'FALCNS999';
        acc.Active__C = 'Yes';

        insert acc;

        system.debug('after insert acc = '  + acc);

        acc.Name = 'Salesforce Inc.';
        acc.AccountNumber = 'sfdc101';

        //update DML
        update acc;


        try{
            update acc;
        }
        catch(Exception exp){
            system.debug(exp.getMessage());
        }

    }
    public static void dmlUpdateDemo_3(){//
        //1. soql
        account acc =[SELECT id, Name, AccountNumber FROM Account WHERE name = 'SoftInnovas3112' LIMIT 1];

        //2.update account
        acc.Name ='SoftInnovas Inc.';
        acc.AccountNumber = 'Falcons 999';
        //acc.active__c = 'No';// will it work? No bcz not in soql

        //3.DML
        update acc;
        system.debug('after update = ' + acc );
    }

    public static void dmlUpdateDemo_4(){
        //1. return any 1 account using soql
        account acc = [SELECT id, Name FROM Account WHERE name = 'SoftInnovas3112' limit 1];

        //2. create contact instance
        contact cnt = new Contact();
        cnt.LastName ='Holy';

        //3.set the relationship field
        cnt.accountId = acc.id;
        insert cnt;

    }


 }