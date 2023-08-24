global with sharing class SFWebServices 
{
 webService static List <Account> getAccount(String accountName)

 {
    List<Account> getAccount = new List<Account>();
    getAccount = [SELECT Id, Name FROM Account WHERE Name =:accountName];
    return (getAccount);

}

}