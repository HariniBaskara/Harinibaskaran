public with sharing class EmployeeMasterPage 
{
    @AuraEnabled
    public static List<Contact> returnTenContact()
    {
        List<Contact> tenContact = [SELECT Name, Email,PhoneNumber FROM Contact LIMIT 10];
        return TenContact;    
    }
}