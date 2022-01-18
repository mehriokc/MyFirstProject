public inherited sharing class StandardControllerExtension {
    public Account acc;
    public List<Contact> contacts {get; set;}

    public StandardControllerExtension(ApexPages.StandardController stdController){
        this.acc = (Account)stdController.getRecord();
        this.contacts = [
            SELECT Id, FirstName, LastName, Email
            FROM Contact
            WHERE AccountId = :this.acc.Id
        ];
        system.debug('contacts: '+contacts);
    }
}