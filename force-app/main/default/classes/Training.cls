public with sharing class Training 
{
     public static void numberdivisiable()
    {
        for(Integer i=1;i<=100;i++)
        {
            if(Math.mod(i, 9)!=0)
            {
                System.debug(i);
            }
        }
    }
    public static Integer sumoftwonumber(Integer num1,Integer num2)
    {
    Integer sum=num1+num2;
     return sum;
    }
    public static void pattern()
    {
        Integer rows = 5; 
        Integer no=1;
        for (Integer i = 1; i <= rows; i++)
        {
            for (Integer j = 2; j <= i; j++)
            
            {
              System.debug(no);
              no++;
            }
            System.debug('');
        }
    }
    public static void reverseOrder(String name)
    {
       string reverseName=name.reverse();
       system.debug(reverseName);
    }
    public static void isPrime()   
    {
        for (Integer i = 1; i <= 10; i++) 
        {
            if (Math.mod(Number, 2) == 1) 
            {
                system.debug(i);
            }
        }
    }
    public static Lead (string lastname,string email,string company)
   {
    Lead leadRecordInsert=new Lead(Lastname=lastname,Email=email,Company=company);
   
   }
    public static Lead dobLeadRecord(String lastname , String company, Date dobdate )
        {
            if (dobdate==Null) 
            {
                Date defaultdate =Date.newInstance(1990,01,01);
                dobdate=defaultdate;
            }
            Lead newlead = new Lead();
            newlead.Lastname= lastname;
            newlead.Company = company;
            newlead.DateOfBrith__c = dobdate;
       
            return newlead;
        }
     public static void insertContactWheneverAccountIsCreated(String lastName)
     {
      Account newAccountRecord = new Account();
      newAccountRecord.Name = lastName;

      Contact newContactRecordAssociatedWithAccount = new Contact();
      newContactRecordAssociatedWithAccount.AccountId = newAccountRecord.Id;
      newContactRecordAssociatedWithAccount.LastName = lastName;
      


     }
      public static void createLeadsInBulk(Integer numbers)
     {
      List<Lead> listOfLeadThatCreatedInBulk = new List<Lead>();
      for (Integer i = 1; i <= numbers; i++) 
      {
      Lead newLeadRecord = new Lead();
      newLeadRecord.FirstName='Test';
      newLeadRecord.LastName = 'Test' + i;
      newLeadRecord.Company = '4iapps';
      newLeadRecord.Email='test.test'+i+'@4iapps.com';
      listOfLeadThatCreatedInBulk.add(newLeadRecord);
      }
      system.debug(listOfLeadThatCreatedInBulk);
      

     }
}