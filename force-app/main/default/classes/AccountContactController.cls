public with sharing class AccountContactController {

    @AuraEnabled(cacheable=true)

    public static List<AccountWrapper> getAccountData() {

        List<AccountWrapper> accountList = new List<AccountWrapper>();

        for (Account acc : [SELECT Id, Name, (SELECT Id, Name, Email FROM Contacts LIMIT 1) FROM Account LIMIT 10]) {

            AccountWrapper wrapper = new AccountWrapper();

            wrapper.Id = acc.Id;

            wrapper.Name = acc.Name;

            if (acc.Contacts.size() > 0) {

                wrapper.Contact = acc.Contacts[0];

            }

            accountList.add(wrapper);

        }

        return accountList;

    }

 

    public class AccountWrapper {

        @AuraEnabled

        public Id Id;

        @AuraEnabled

        public String Name;

        @AuraEnabled

        public Contact Contact;

    }

}

 