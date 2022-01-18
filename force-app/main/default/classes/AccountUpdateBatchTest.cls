@isTest
public with sharing class AccountUpdateBatchTest {
    @isTest
    static void testBatchClass(){
        //create a list of account
        list<account> accList = new list<account>();

        account acc = new account();
        acc.Name = 'test acc';
        accList.add(acc);

        account acc2 = new account();
        acc2.Name = 'test acc2';
        accList.add(acc2);
        //insert 1000 account in the list.
        for (Integer i = 0; i < 1000; i++) {
            account acc3 = new account();
            acc3.Name = 'test acc v' + i;
            accList.add(acc3);    
        }
        insert accList;

        //how many accounts will batch class find in start method??
        test.startTest();
        AccountUpdateBatch ab = new AccountUpdateBatch();
        database.executeBatch(ab,2000);
        test.stopTest();
        
        List<Account> accUpdated = [select id, name, site from account];
        system.assert(accUpdated.size() > 0);
        system.assertEquals('www.softinnovas.com', accUpdated[0].Site);
    }
}