public class sampleSOQLDemo1 {
    public static void sampleSoql1() {
        List<account> listAccount = [ select name, accountnumber, Active__c from account ORDER by name ];
        system.debug(listAccount);
        //Iteration over the list of Accounts
        for(account eachAcc : listAccount){
            if(eachAcc.Active__c == 'Yes'){
                System.debug(eachAcc.Name + ' is Active');
            } else if(eachAcc.Active__c == 'No'){//if here because we can have null value as well in Active__c
                System.debug(eachAcc.Name + ' is not Active');
            }
        }
    }

    public static void sampleSoql2() {
        //List<account> listAccount = [select name, accountnumber, Active__c from account order by name ];//This is bringing 13 recs
        List<account> listAccount = [select name, accountnumber, Active__c from account Where Active__c = 'Yes' order by name ];
        //This is bring only Active==Yes account recs -- 9 recs for me
        system.debug(listAccount);
        system.debug('size  -->'+listAccount.size());
        //Iteration over the list of Accounts
        for(account eachAcc : listAccount){
            System.debug(eachAcc.Name + ' is Active');
        }
    }

    public static void sampleSoql3(String activeFilterValue) {
        System.debug('User prefernece is    -->'+activeFilterValue);
        //Syntax for using variable inside the where clause
        //Select somefields From ObjectName Where fieldName =: variableName
        List<account> listAccount = [select name, accountnumber, Active__c from account Where Active__c = :activeFilterValue];
        //If activeFilterValue --> Yes
        //In Runtime select name, accountnumber, Active__c from account Where Active__c = 'Yes'
        //If activeFilterValue --> No
        //In Runtime select name, accountnumber, Active__c from account Where Active__c = 'No'
        system.debug(listAccount);
        system.debug('size  -->'+listAccount.size());
        //Iteration over the list of Accounts
        for(account eachAcc : listAccount){
            System.debug(eachAcc.Name + '-->' + eachAcc.Active__c);
        }
    }


    //1. Print all the opportunities with Stage as 'Closed Won' and make it dynamic so that it should work for other stages as well.
    public static void sampleSoql4(String strStage) {
        List<Opportunity> lstOpportunities = [SELECT Name, Id FROM Opportunity WHERE StageName=:strStage];
        System.debug(lstOpportunities);
        
    }

    //2. Find all the opportunities which has Lead Source as 'Web' and Stage as 'Closed Lost'. Make it dynamic so that it should work for other stages and Lead sources as well.
    public static void sampleSoql5(String strSource, String strStage) {
        List<Opportunity> lstOpportunities = [SELECT Name, Id FROM Opportunity WHERE LeadSource=:strSource AND StageName=:strStage];
        System.debug(lstOpportunities);
        
    }


}
//I want active accounts and non active accounts based on the input given by the user
//Message -- Account Name Active Field Value
