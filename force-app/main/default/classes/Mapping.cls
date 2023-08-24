Public with sharing class Mapping
{
     public static String createAccountRecord(string name)
    {
            Account newAccountRecord = new Account();
            newAccountRecord.Name=name;
            Insert newAccountRecord;
    }
}