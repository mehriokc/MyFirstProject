public class AssignmentAccToCont {
    // # 1
    /*
    Create new class, and one new method to create account, and one contact for that account. Set values for following field in account - name, account number, revenue, phone. Set values of following fields in contact - Salutation, first name, last name, phone, email, birthdate, LeadSource. Set all the values from class variables.
     */

    public string name, accountNumber, phone, accountId;
    public decimal annualRevenue;

    public AssignmentAccToCont(String strName, String strAccNumber, String strPhone, Decimal decAnnualRevenue){ 
        name = strName;
        accountNumber = strAccNumber; 
        phone = strPhone;
        annualRevenue = decAnnualRevenue;
    }


    public void createAccountAndContact() {
        Account acc = new Account ();
        acc.Name = name;
        acc.AccountNumber = accountNumber;
        acc.phone = phone;
        acc.AnnualRevenue = annualRevenue;
        insert acc;
        System.debug('Inserted account ' + acc);
        accountId = acc.Id;

        Contact cont = new Contact();
        cont.Salutation = 'Mr';
        cont.FirstName = 'POC for ';
        cont.LastName = acc.Name;
        cont.AccountId = acc.Id;
        cont.Phone = acc.Phone;
        cont.Email = acc.Name.replaceAll(' ', '') + '@gmail.com';
        cont.Birthdate = Date.today();
        cont.LeadSource = 'Web';

        insert cont;
        System.debug('Inserted contact ' + cont);

    
    // 2 Create a method which fetch any one contact whose account is not null. And update its account with the one we created in previous question.
    }
    public void updateContactWithAccount(){
        Contact oneContWithAccount = [SELECT Name FROM Contact WHERE AccountId!=null LIMIT 1];
        oneContWithAccount.AccountId = accountId;
        System.debug('Account with 1 Contact  ' + oneContWithAccount);

        update oneContWithAccount;
        System.debug('Updated account ' + oneContWithAccount);
        
    }


// 3 Create a method. Fetch one account which do not have any ‘case’ in it. Create one new case record for that account.   

    public void createCaseForAccountWithoutCases(){
        Account acc = [SELECT Id FROM Account WHERE Id NOT IN (SELECT AccountId FROM Case WHERE AccountId !=null) LIMIT 1];

        System.debug('Account with no case ' + acc);

        Case newCase = new Case();
        newCase.Status = 'New';
        newCase.Origin = 'Web';
        newCase.AccountId = acc.Id;

        insert newCase;
        System.debug('Inserted a case ' + newCase);
    }


}
