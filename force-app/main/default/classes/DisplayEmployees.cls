public class DisplayEmployees {
  
    @AuraEnabled
    public static void createContact(String firstName, String lastName, String email, String phone) {
        Contact newContact = new Contact();
        newContact.FirstName = firstName;
        newContact.LastName = lastName;
        newContact.Email = email;
        newContact.Phone = phone;
        
        insert newContact;
    }
}