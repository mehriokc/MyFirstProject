public with sharing class assignmentSoql {
    //#1
    public static void asgSoql(string accountValue){
        list<account> listAccount = [SELECT Name from Account  where Name = :  accountValue];
        system.debug(listAccount);

    }


//#2 
public static void asgSoql2(string oppValue){
    List<Opportunity> listOpportunities = [SELECT id, Name, StageName FROM Opportunity WHERE StageName = : oppValue];
    for( opportunity eachOpp : listOpportunities){
        system.debug('each name -> ' + eachOpp.name  + 'stage name -> ' + eachOpp.StageName);

    }
}
//#3
public static void stageOpportunity(string stageClosed) {
    list<Opportunity> stageOpportunity= new list<Opportunity>();
    stageOpportunity=[ Select name, amount,StageName FROM Opportunity WHERE StageName=:stageClosed];
    
    for(Opportunity eachOpp : stageOpportunity){
        system.debug('Opportunity name : ' +eachOpp.name + 'stage is ' +eachOpp.StageName);
    }

}
public static void stageOpportunity2(string stageClosed, string leadSource){
    list<Opportunity>stageAndLead= new list<Opportunity>();
    stageAndLead=[ Select name, amount, Stagename, LeadSource FROM Opportunity WHERE Stagename=:stageClosed And LeadSource=:leadSource ];
    for(Opportunity eachOpp : stageAndLead){
        system.debug('Opportunity is : ' +eachOpp.name + ' and stage : ' + eachOpp.StageName + ' LeadSource : ' + eachOpp.leadSource);
    }
}


//#4 
public static void accountParentToChild (){
    list<account> listAccount = [SELECT id, name, phone, (SELECT id, Firstname, LastName FROM Contacts) FROM Account];
    system.debug(listAccount);
    for ( account eachAccount : listAccount){
        system.debug('Each Account : ' +eachAccount);
        list <contact> listContacts = eachAccount.Contacts;
        for(Contact eachContact : listContacts){
            system.debug('Account : ' + eachAccount.name + 'contacts : ' +eachContact.firstname +eachContact.lastname);
        }

    }
    
}

//#5
public static void  accountParentToChild2(){
    // Getting the list of AccountId's from the Contacts table, where AccountId is NOT null and groups them by AccountId's to avoid dublicates. 
    list<AggregateResult> listAccount = [SELECT AccountId FROM Contact WHERE AccountId != null GROUP BY AccountId];

    System.debug(listAccount);
    System.debug(listAccount.size());


// This is a simpler approach where we pull all the Account records and go over each 
// to check if any Contact is associated with the account record 
    list<account> listAccountAll = [SELECT Id FROM Account];
    list<account> listAccountSelected = new List<account>();
    for(Account acc: listAccountAll){
        Id accId = acc.Id;
        List<Contact> lstContact = [SELECT Id FROM Contact WHERE AccountId = :accId];
        if(lstContact.size()>0) listAccountSelected.add(acc);
    }

    System.debug(listAccountSelected);
    System.debug(listAccountSelected.size());


    // list<account> listAccount = [SELECT Id FROM Account];
   
    // for(Account acc: listAccountAll){
    //     Id accId = acc.Id;
    //     List<Contact> lstContact = [SELECT Id FROM Contact WHERE AccountId = :accId];
    //     if(lstContact==null) listAccount.remove(listAccount.indexOf(acc));
    // }

    // System.debug(listAccount);
    // System.debug(listAccount.size());

}


//#6
public static void  accountParentToChild3(String strOpportStage){
    // Getting the list of AccountId's from the Contacts table, where AccountId is NOT null and groups them by AccountId's to avoid dublicates. 
    list<AggregateResult> listAccount = [SELECT AccountId FROM Opportunity WHERE AccountId != null AND StageName=:strOpportStage GROUP BY AccountId];

    System.debug(listAccount);
    System.debug(listAccount.size());


// This is a simpler approach where we pull all the Account records and go over each 
// to check if any Opportunity is associated with the account record and is at Closed Won stage
    list<account> listAccountAll = [SELECT Id FROM Account];
    list<account> listAccountSelected = new List<account>();
    for(Account acc: listAccountAll){
        Id accId = acc.Id;
        List<Opportunity> lstOpportunities = [SELECT Id FROM Opportunity 
                                                WHERE AccountId = :accId AND StageName=:strOpportStage];
        if(lstOpportunities.size()>0) listAccountSelected.add(acc);
    }

    System.debug(listAccountSelected);
    System.debug(listAccountSelected.size());
}

//#7
    public static void accountParentToChild4(){
        List<AggregateResult> lstOpp = [SELECT StageName, Count(Id) FROM Opportunity GROUP BY StageName];
        System.debug(lstOpp);
        System.debug(lstOpp.size());
    }

}