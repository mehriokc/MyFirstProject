public with sharing class soqlDemo2 {
    public static void soqlChildToParent1() {
        //fetch contact name along with account name and accountnumber.

        List<contact> contacts = [select firstname, lastname, 
                                    phone, account.name,
                                    account.accountnumber 
                                    from contact];
        for (contact eachContact : contacts) {
            system.debug(eachContact);
            //print contact lastname -> account name -> acc number
            system.debug('last name = ' + eachContact.LastName + ', acc name = ' + eachContact.account.Name);
            system.debug('account number -> ' + eachContact.account.AccountNumber);
        }
        system.debug('***** contacts size = ' + contacts.size());
    }

    public static void soqlChildToParent2() {
        //fetch contact name along with account name and accountnumber.

        List<contact> contacts = [select firstname, lastname, 
                                    phone, account.name,
                                    account.accountnumber,
                                    Account.active__c 
                                    from contact 
                                    where account.active__c = 'Yes'
                                    and phone !=null];
        for (contact eachContact : contacts) {
            system.debug(eachContact);
            //print contact lastname -> account name -> acc number
            system.debug('last name = ' + eachContact.LastName + ', acc name = ' + eachContact.account.Name);
            system.debug('account number -> ' + eachContact.account.AccountNumber);
        }
        system.debug('***** contacts size with active filter = ' + contacts.size());
    }
}