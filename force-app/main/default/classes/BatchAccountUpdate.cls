public with sharing class BatchAccountUpdate implements Database.Batchable<SObject>{
    public BatchAccountUpdate() {
    

    }
    public  Database.QueryLocator start(Database.BatchableContext context)
    {
        String accountsToUpdate ='SELECT Id,Is_Updated__c FROM Account WHERE Is_Updated__c=false';
        return Database.getQueryLocator(accountsToUpdate);
     }
     public void execute(Database.BatchableContext context , List<SObject> accountsToUpdate)
     {
        for(Account accountToUpdate : (List<Account>)accountsToUpdate) //list of soject to Account
        {
            accountsToUpdate.Is_Updated__c=true;
        }
     
      update accountsToUpdate;
    }
     public void finish(Database.BatchableContext context)
     {

     }
}