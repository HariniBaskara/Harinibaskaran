public with sharing class Soql1 {
public  static void soql{
 List<opportunity> getrelatedaccountandrecord=[SELECT
                                                      Account.Name,
                                                      Name,
                                                      CloseDate,
   (SELECT
          Name
   FROM OpportunityLineItems)
    
    FROM Opportunity];
    
    }
    
    public static void soql2()
    
    {
    
    List<contact>getContacts=[ SELECT
    
                                    Id,
    
                                    FirstName,
    
                                    LastName
    
    FROM Contact
    
    WHERE AccountId = NULL];
    
     
    
    }
    
    public static void soql3()
    
    {
    
    List<contact>getallaccountnotrelatedtocontact=[SELECT
    
                                                        Name,
    
    FROM Account
    
    WHERE Id NOT IN (SELECT AccountId FROM Contact)];
    
    }
}
     
 