//1 Define a method to create and return new Account record. Please pass all
//the required field values in this method.

public with sharing class assignmentDml {
     public static void newAccountRec(string nameValue ) {

        Account acc = new Account();
        acc.Name = nameValue;
       // acc.AccountNumber = 'ASG77';

        insert acc;
        System.debug('Account inserted '+acc);

    }

    //2  Write another method which takes an Account record and create an
    //opportunity for the same. Take any dummy values for opportunity required
    //fields.
    public static void accountToOpp(account acc){
       
        opportunity opp = new Opportunity ();
        opp.Name = 'Ring of Dimond';
        opp.StageName = 'Closed Won';
        opp.CloseDate = date.newInstance(2021, 11, 25);

        opp.AccountId = acc.id;

        insert opp;
        System.debug('Oportunity inserted '+opp);
    }
    //3 Write a method in the above class which takes a list of opportunities and
    //update the stage to Closed Lost for all the opportunities from the list which
    //have amount less than 200.

public static void dmlOppUpdate(list<opportunity> listOpp) {
    for(Opportunity eahOpp : listOpp)


    Opportunity opp = new opportunity();
    opp.StageName = 'Closed Lost';
    opp.Amount = 

}
// 4  Define a method to delete all the opportunities whose name field contains
//‘To be Deleted’. This method should return the number of opportunities
//deleted
public static void dmlOppDelete(){

List<Opportunity> listOppDelete = [SELECT id, name from Opportunity WHERE Name like 'To be deleted%'];
delete listOppDelete;

}
// #5 Write a method in a class which returns all the opportunities in the org
//having stageName as Closed Won and Account tagged to it is Inactive.
public static List<opportunity> oppInactive() {
    

    list<opportunity> listOpp = [select id from opportunity where
    StageName = 'Closed Won' and Account.active__c = 'No'];

    system.debug('check ' + listOpp);
    return listOpp;
}

//6 Create a method which returns all the Inactive Accounts which have at
//least a Closed Won opportunity with amount more than 5000 tagged to
//them.
public static list<Account> inactiveAccWithClosedOpp(){
    List<account>listAcc=[SELECT NAME, aCTIVE__C, (SELECT STAGEnAME, aMOUNT FROM Opportunities)from Account where Active__c='No'];
    list<account> newAcc=new list<account>();
    for(account eachAcc : listAcc) {
        for(Opportunity eachOpp :eachAcc.Opportunities){

            if(eachOpp.StageName== 'Clsosed Won' && eachOpp.Amount>5000){
                newAcc.add(eachAcc);
            }
        }
    }
    system.debug(newAcc);
    return newAcc;
}

// 7  Write a parametrized method which just creates a contact for a particular
//account. Given that the parameter can of type List<Account> or only
//Account. Contact LastName should be populated with Account Name.

public static void createContact(List<Account> listAcc){
    list<contact> listContact = new list<contact>();
    for(Account eachAcc : listAcc){
        Contact c= newContact();
        c.AccountId=eahAcc.ed;
        c.lastname=eachAcc.name;
        listContact.add(c);
    }
    insert listContact;
    system.debug(listContact);
}





// 8 Using methods creating in question 6 and question 7, try to create contacts
//for all the accounts returned by the method created for question 7.
public static void createContactInactiveAcc(list<Account>listAcc){
    list<accout> accList=inactiveAccWithClosedOpp();
    createContact(accList);
}

}