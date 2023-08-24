public with sharing class DmlLogManager implements LogManager

{
  public static void createLog()

 {

        Contact newContactRecord = new Contact();

        newContact.LastName='Harini';

        Database.SaveResult result =Database.insert(newContactRecord);

        system.debug(result);

 

        DML_log__c newDmlLog = new DML_log__c();

        if(result.isSuccess()==true)

        {

            newDmlLog.save_result__c='Record Created Sucessfully,Id is '+result.getId();

        }

        else {

            newDmlLog.save_result__c='Record is not created ,error is '+result.getErrors();

        }

        insert newDmlLog;

    }

}