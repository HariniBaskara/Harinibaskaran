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
    
}
