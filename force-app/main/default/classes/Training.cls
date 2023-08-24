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
            for (Integer j = 2; j <= i; j++\
            )
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
            if (Math.mod(num, 2) == 1) 
            {
                system.debug(i);
            }
        }
    }
    public static Lead createLeadRecord(string lastname,string email,string company)
   {
    Lead leadRecordInsert=new Lead(Lastname=lastname,Email=email,Company=company);
    insert leadRecordofInsert;
    return leadRecordofInsert;
   }
    public static Lead dobLeadRecord(String lastname , String company, Date dobdate )
        {
            if (dobdate==Null) 
            {
                Date defaultdate =Date.newInstance(1990,01,01);
                dobdate=defaultdate;
            }
            Lead newleadd = new Lead();
            newleadd.Lastname= lastname;
            newleadd.Company = company;
            newleadd.DateofBirth__c = dobdate;
            insert newleadd;
            return newleadd;
        }
}



 





