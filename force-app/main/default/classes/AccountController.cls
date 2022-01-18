public inherited sharing class AccountController {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        List<Account> accounts = [
            SELECT Name, BillingState, Type, Phone
            FROM Account
        ];
        return accounts;
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountByKeyword(
        String keyword
    ){
        if(String.isBlank(keyword)){
            //keyword == ''
            //keyword == null
            return new List<Account>();
        }
        String queryParameter = '%'+keyword+'%';
        List<Account> accounts = [
            SELECT Name, BillingState, Type, Phone
            FROM Account
            WHERE Name LIKE :queryParameter
        ];
        //integer i = 10/0; this line used just to get error
        return accounts;        
    }
}