trigger AccountTrigger on Account (before insert, after insert, before update, after update ) {

    //boolean check
    Boolean allTrigger = TriggerSwitch.isAllTriggerOn();
     Boolean accountTrigger = TriggerSwitch.isAccountTriggerOn();
    System.debug('alltrigger switch = ' + allTrigger);
     System.debug('accountTrigger switch = ' + accountTrigger);

    if (alltrigger && accountTrigger){
    
        

    }


    
      
    








    //we will write deciding conditions here
    //eg.isBefore

    if(trigger.isBefore){
       AccountTriggerHandler.UpdateAccountDescription(trigger.new);
    }
       // 1-> When ever a new Account is created  with Indsutry as Banking then set ownership as public.Sunday 11/14/21
            if(trigger.isInsert && trigger.isBefore){
               AccountTriggerHandler.setOwnerShipPublic(trigger.new);}
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('Account trigger fired');
        system.debug('size of records = ' + trigger.size);
        //count how many times this line executes.
        AccountTriggerHandler.accTriggerCount++;
        system.debug('trigger run count =' + AccountTriggerHandler.accTriggerCount);
    }
    



   //4-Create a trigger which will update the "IsActive" to true on related Contact records whenever "IsActive" is set to true on related Account.
//    if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate) ){
//     AccountTriggerHandler.setContactisActive(trigger.new, trigger.newMap, trigger.oldMap);
//  }




/*5-> When ever a Account phone number is modified ,update all the contacts of the Account
		a. Contacts otherPhone as Old phone no of account
		b. Contacts mobilePhone as New phone no of Account.*/
    //if(trigger.isAfter &&  trigger.isUpdate){
        //AccountTriggerHandler.updateContactPhone(Trigger.new, Trigger.newMap, Trigger.oldMap);
   // }









        // system.debug('before trigger on account object');
        // system.debug('ORIGINAL trigger.new -> ' + trigger.new);
        // for(account eachAcc : trigger.new){
        //     if(eachAcc.Active__c == 'Yes')
        //     eachAcc.Description = 'is active';
        //     else{
        //         eachAcc.Description = '';
        //     }

        // }
        // SYSTEM.DEBUG('CHANGED TRIGGER.NEW -> ' + trigger.new);
    // }  










    /*if(trigger.isAfter){
        system.debug('AFTER trigger on Account Object.');
        if(trigger.isInsert)
            system.debug('==========AFTER INSERT===========');
        if(trigger.isUpdate)
            system.debug('==========AFTER UPDATE===========');
        
        //get map if inserted/update record's SF ID vs Account record
        map<id, account> newMap = trigger.newMap;
        //use keyset method to get SET of IDS(keys)
        Set<id> accIdSet = newMap.keySet();
        system.debug('accid set = ' + accIdSet);

    }


    /*map<id, account> trgNewMap = trigger.newMap;
    map<id, account> trgOldMap = trigger.oldMap;

    if (trigger.isBefore && trigger.isInsert) {
        system.debug('=======BEFORE INSERT======');
        system.debug('Before insert OLD MAP = ' + trgOldMap);
        system.debug('Before inert NEW MAP = ' + trgNewMap);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('=======AFTER INSERT======');
        system.debug('AFTER insert OLD MAP = ' + trgOldMap);
        system.debug('AFTER inert NEW MAP = ' + trgNewMap);
    }

    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('=======BEFORE UPDATE======');
        system.debug('Before UPDATE OLD MAP = ' + trgOldMap);
        system.debug('Before UPDATE NEW MAP = ' + trgNewMap);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('=======AFTER UPDATE======');
        system.debug('AFTER UPDATE OLD MAP = ' + trgOldMap);
        system.debug('AFTER UPDATE NEW MAP = ' + trgNewMap);
    }*/










/*    //only print when before insert trigger excute
    if(trigger.isbefore)
        System.debug('Before insert trigger of Account object.'); 
    //only on after insert
    if(trigger.isAfter){
        System.debug('After insert trigger of Account object.');
        System.debug('trigger.new in after trigger= ' + trigger.new);
    }
    if(trigger.isAfter && trigger.isInsert){
        list<account> newAccounts = trigger.new;
        list<account> oldAccounts = trigger.old;

        system.debug('after insert newAccounts = ' +newAccounts);
        system.debug('after insert oldAccounts = ' +oldAccounts);

        //print how many accounts are inserted
        /*system.debug('# of  inserted = '+ newaccounts.size());
        for(account acc : newAccounts){
            system.debug('Acc Id is ' + acc.Id + ', acc name is ' + acc.Name);
        }

        if(trigger.isAfter && trigger.isUpdate){
            //print old account name
            for(account oldAcc : trigger.old){
                system.debug('AFTER Old ID = ' + ', Old Acc name = ' +oldAcc.Name);
            }
                //print new account name 
                for(account newAcc : trigger.new){
                    system.debug('AFTWER New ID = ' + ', New Acc name = ' +newAcc.Name);
            }
        
        }
        if(trigger.isAfter){
            system.debug('AFTER trigger on Account Object.');
            if(trigger.isInsert)
                system.debug('==========AFTER INSERT===========');
            if(trigger.isUpdate)
                system.debug('==========AFTER UPDATE===========');
            
            Set<id> accIdSet = new set<id>();
            for (account acc : trigger.new) {
                accIdSet.add(acc.id);
            }
            system.debug('accid set = ' + accIdSet);
        

    }*/

}