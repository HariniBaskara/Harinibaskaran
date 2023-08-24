public with sharing class AccountContactsController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getRelatedContacts(String accountId) {
        List<Contact> contacts = [SELECT Id, Name FROM Contact WHERE AccountId = :accountId];
        return contacts;
    }
}
