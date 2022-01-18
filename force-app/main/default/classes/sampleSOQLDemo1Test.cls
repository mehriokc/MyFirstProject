@isTest
public  class sampleSOQLDemo1Test {
    @istest static void testmethod1(){
        account acc = new account();
        acc.Name = 'test account';
        insert acc;
        sampleSOQLDemo1.sampleSoql1();

    }
    @istest static void testmethod2(){
        list<account> listAcc = new list<account>();
        for(Integer i = 0; i < 100; i++){
            account acc = new account ();
            acc.Name = 'test account - ' + i;
            listAcc.add(acc);
        }
        insert listAcc;
        // limit utilized here.
        //1 dml
        //100 dml rows
        Test.startTest();
        //governor limit will be reset (00)
        sampleSOQLDemo1.sampleSoql1();
        test.stopTest();
    }
    

    }

