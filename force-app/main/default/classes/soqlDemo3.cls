public with sharing class soqlDemo3 {
    public static void simpleParentTochild() {
        account acc = [select id, name from Account 
            where id = '0015e00000ECnQHAA1'];
        system.debug('account id = ' + acc.id);

        List<Contact> listContact = [select firstname, lastname
        from contact where account.id = :acc.Id];

        for (contact eachCnt : listcontact) {
            system.debug(eachCnt);
        }
    }

    public static void simpleParentTochild2() {
        List<account> listAcc = [select id, name from Account limit 10];
        
        list<id> listAccID = new list<id>();
        for (account eachAcc : listAcc) {
            listAccId.add(eachAcc.Id);
        }

        List<Contact> listContact = [select firstname, lastname
        from contact where account.id in :listAccID];

        for (contact eachCnt : listcontact) {
            system.debug(eachCnt);
        }
    }

    //actual parent to child query
    public static void accountParentToChild3(){
        List<account> listAccount = [SELECT Id, Name, Phone, (SELECT Id, LastName FROM Contacts) FROM Account];
        system.debug(listAccount);
        //for each loop on? account
        for(account eachAccount : listAccount){
            system.debug('eachAccount ='+ eachAccount);
            List<contact> listContacts= eachAccount.contacts;
            //for each loop on listContacts
            
            for(contact eachContact : listContacts){
                system.debug('acc= ' + eachAccount.Name +', contact lastname = ' + eachContact.LastName);
            }
        }

    }

public static void accountAndOpps(){
    list<account> listAccount = [SELECT Name, AnnualRevenue, (SELECT Name, Amount FROM Opportunities WHERE Stagename = 'Closed Won') FROM Account WHERE type='Customer - Direct'];
    for (account acc : listAccount) {
        Decimal totalAmount = 0;
        List<Opportunity> ListOpp = acc.Opportunities;
        for(opportunity opp : listOpp) {
            system.debug( 'opp name = ' + opp.name);
            System.debug(' opp amount = ' + opp.Amount);
            totalAmount += opp.Amount + opp.Amount;

        }
        system.debug('acc name = ' + acc.Name + ', total opp amount = ' + totalAmount);
    }
}

}