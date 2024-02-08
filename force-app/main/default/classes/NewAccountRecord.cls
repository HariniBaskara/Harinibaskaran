public with sharing class NewAccountRecord 
{
    public static void createAccountRecord(string name)
    {
            Account newAccountRecord = new Account();
            newAccountRecord.Name=name;
            Insert newAccountRecord;
    }
}