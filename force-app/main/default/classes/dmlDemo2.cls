public class dmlDemo2{
public static void dmlMultipleRecordInsert_RIGHT() {
    list<account> listAccount = new List<Account>();
    
    account acc = new Account();
    acc.Name = 'SoftInnovas1';
    acc.AccountNumber = 'ASCI-1';
    acc.active__c = 'Yes';
    listAccount.add(acc);

    for (Integer i = 0; i < 5; i++) {
        account acc2 = new Account();
        acc2.Name = 'SoftInnovas v'+i;
        acc2.AccountNumber = 'ASCI-2'+i;
        acc2.active__c = 'Yes';

        listAccount.add(acc2);
        system.debug('just adding in list = ' + listAccount);
    }

    system.debug('size of list ' + listAccount.size());
    listAccount.isEmpty(); //returns true when list is empty

    if(!listAccount.isEmpty()) 
        insert listAccount;
}


public static void dmlMultipleRecordUpdate_right() {
    //soql
    List<Account> listAcc = [select id, name from account 
                            where name like 'SoftInnovas%'];
    System.debug('list size = ' + listAcc.size());
    list<account> updateAccounts = new List<Account>();

    for (Account acc : listAcc) {
        acc.Name = acc.Name + ' update Bulk';
        updateAccounts.add(acc);
     
    }
    if(! updateAccounts.isEmpty())
    update  updateAccounts;

 
}
public static void addmultipleSP(){
    List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>();
    for(Integer i = 0; i<10; i++){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Name__c = 'Create Triggers - ' + i;
        sp.Description__c = 'Just added new sp' +i;
        listSP.add(sp);

    }
    insert listSP;
}




// Delete method
// public static void dmlMultipleRecordDelete() {
//     list<account> listAccToDelete=[select id, name 
//                             from Account where name like 'Soft%'];
//     //delete dml
//     Delete listAccToDelete;
}

