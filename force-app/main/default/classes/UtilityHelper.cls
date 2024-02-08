public with sharing class UtilityHelper {

 

    public UtilityHelper() {

 

        // Constructor (if needed, you can add code here)

 

    }

 

   

    public static Integer generateRandomString() {

 

        integer Numbr = (Integer)Math.ceil(Math.random() * 1000);

 

        system.debug('Random no '+ Numbr);

 

        return Numbr;

 

    }

 

    // # Task 2 :

 

    public static Boolean validateLoggedInUserHasCreateAccessToObject(String objectName)

 

    {

 

        // Get the SObject in which you want check the user has create access

 

        Schema.SObjectType objectType = Schema.getGlobalDescribe().get(objectName);

 

 

 

        // Check if the object is accessible and createable by the current user

 

        Boolean hasAccess = objectType.getDescribe().isAccessible() && objectType.getDescribe().isCreateable();

 

 

 

        return hasAccess;

 

    }

    }