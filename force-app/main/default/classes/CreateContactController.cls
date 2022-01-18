public inherited sharing class CreateContactController {
    
    @AuraEnabled
    public static string createContact(
        String firstName, String lastName, String phone
    ){
        Contact con = new Contact();
        con.FirstName = firstName;
        con.LastName = lastName;
        con.Phone = phone;
        insert con;
        return con.Id;
    }
}