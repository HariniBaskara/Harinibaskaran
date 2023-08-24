global class UpdateAccountAndContactRandomNumbers implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator('SELECT Id FROM Account');
    }

    global void execute(Database.BatchableContext BC, List<sObject> scope) {
        List<Account> accountsToUpdate = new List<Account>();
        List<Contact> contactsToUpdate = new List<Contact>();

        Integer randomNumber = Integer.valueOf(String.valueOf(Math.random()).substring(2, 10));

        for (Account acc : (List<Account>) scope) {
            acc.RandomNumberField__c = randomNumber;
            accountsToUpdate.add(acc);

            for (Contact con : [SELECT Id FROM Contact WHERE AccountId = :acc.Id]) {
                con.RandomNumberField__c = randomNumber;
                contactsToUpdate.add(con);
            }
        }

        update accountsToUpdate;
        update contactsToUpdate;
    }

    global void finish(Database.BatchableContext BC) {
        
    }
}
