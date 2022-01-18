public class AccountTriggerHandler {
    public static integer accTriggerCount = 0;
    public static void UpdateAccountDescription(List<Account> accList) {
        system.debug('before trigger on account object');
        system.debug('ORIGINAL trigger.new -> ' + accList);
        for(account eachAcc : accList){
            if(eachAcc.Active__c == 'Yes')
            eachAcc.Description = 'is active';
            else{
                eachAcc.Description = '';
            }

        }
         SYSTEM.DEBUG('CHANGED TRIGGER.NEW -> ' + accList);
    }
    
    // catch(Exception ex){
    //     system.debug('ex = ' + ex.getMessage());
    //    // throw ex;
    // }




//         public static void updateContactVipFields(List<account> AccountTrigger, Map<id, account> accTriggerNewMap, Map<id,account> accTriggerNewMap){
//             //create a list<id>
//             //which has account id whic VIP field is changed
//             list<id> updatedAccId = new list<id>();
//             //fill p the list of acc id using for each loop
//             for(account acc: accTriggerNew){
//                 //get new account from newmap
//                 Account newAcc = accTriggerNewMap.get(acc.id);
//                 //get old account from oldmap
//                 Account oldAcc = accTriggerOldMap.get(acc.ed);
//                 //condition to check if VIP is changed
//                 if(newAcc.VIP__c != oldAcc.VIP__c){
//                     updatedAccId.add(acc.id);
//                  }
//             }
//             //get list of contacts for all the accounts in wich VIP was updated
//             //also get account 's vip field in soql'
//             list<contact> listContact = [SELECT name, Account.id, account.vip__c from Contact WHERE account.id in : updatedAccID];
//             if(!lstContact.isEmpty()){
//                 for (contact cnt : lstContact) {
//                     //set contact's vip equal to Accounts VIP field
//                     cnt.VIP__c = cnt.account.VIP__c;
//                 }
//                 //update list of contact
//                 update lstContact;
//         }
//     }   

    
    //2-> When ever new Opportunity is created with stageName as closed won or closed lost, then set closeDate as  today otherwise set closed date as 15 days from today.
//3-> When ever the stageName is modified to  closedWon then set the closeDate as today.
//4-> Create a new checkbox field "IsActive" on Acccount and on Contact object.Create a trigger which will update the "IsActive" to true on related Contact records whenever "IsActive" is set to true on
//5->When ever a Account phone number is modified ,update all the contacts of the Account
		//a. Contacts otherPhone as Old phone no of account
		//b. Contacts mobilePhone as New phone no of Account.


//1-> When ever a new Account is created  with Indsutry as Banking then set ownership as public.
public static void setOwnerShipPublic(List<Account>accList) {
    for(Account each : accList){
        if(each.Industry == 'Banking'){
            each.Ownership= 'Public';
        }
    }
    
}

    //4-Create a trigger which will update the "IsActive" to true on related Contact records whenever "IsActive" is set to true on related Account.
    public static void setContactisActive(List<Account> accList, map<id, Account> newMap, map<id, Account> oldMap) {
        List<Id> updatedAccId = new List<Id>();
        
        for (Account eachAcc : accList) {
            
            if (newMap.get(eachAcc.id).Is_Active__c != oldMap.get(eachAcc.id).Is_Active__c) 
             updatedAccId.add(eachAcc.id);   
            
        }
        List<contact> contactList = [SELECT name, Account.id, account.Is_Active__c FROM Contact WHERE account.id IN :updatedAccId];
        if(!contactList.isEmpty()){
            
            for(contact each : contactList)
                each.Is_Active__c = each.account.Is_Active__c;
        
                update contactList;
        }
    }


    /*5-> Whenever a Account phone number is modified ,update all the contacts of the Account
		a. Contacts otherPhone as Old phone no of account
		b. Contacts mobilePhone as New phone no of Account.*/
public static void updateContactPhone(list<account> accTriggerNew, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
    List<id> updatedAccList = new list<id>();
    for(Account acc : accTriggerNew){
        if(accTriggerOldMap.get(acc.id).phone != accTriggerNewMap.get(acc.id).phone){
            updatedAccList.add(acc.id);
        }
    }
    list<contact> contactList = [select lastname, phone, otherPhone, mobilePhone, account.id, account.phone from contact where account.id in :updatedAccList];
    if(!contactList.isEmpty()){
        for(Contact cnt : contactList){
            cnt.otherPhone = accTriggerOldMap.get(cnt.account.id).phone;
            cnt.mobilePhone = cnt.Account.phone;
        }
        update contactList;
    }
}
}