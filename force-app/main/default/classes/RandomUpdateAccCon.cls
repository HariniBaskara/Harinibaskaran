global class RandomUpdateAccCon implements Database.Batchable<SObject> {

    global Database.QueryLocator start(Database.BatchableContext BC) {

        String query = 'SELECT Id FROM Account';

        return Database.getQueryLocator(query);

    }
 global void execute(Database.BatchableContext BC, List<SObject> scope) {

        Map<Id, Long> accountRandomNumberMap = new Map<Id, Long>();

 

        for (SObject record : scope) {

            Account acc = (Account)record;

            Long randomNumber = generateUniqueRandomNumber();

            acc.RandomNumberField__c = randomNumber;

            accountRandomNumberMap.put(acc.Id, randomNumber);

        }
        update scope;

       

        List<Contact> contactsToUpdate = new List<Contact>();

        for (Contact con : [SELECT Id, AccountId FROM Contact WHERE AccountId IN :accountRandomNumberMap.keySet()]) {

            con.RandomNumberField__c = accountRandomNumberMap.get(con.AccountId);

            contactsToUpdate.add(con);

        }

 

        update contactsToUpdate;

    }

 

    global void finish(Database.BatchableContext BC) {

    

    }

 

    private Long generateUniqueRandomNumber() {

        return Math.round(Math.random() * 100000);

    }

}

 

 