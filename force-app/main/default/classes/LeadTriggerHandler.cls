public with sharing class LeadTriggerHandler 
{
    public static void assignSalesRepBasedOnRegion(List<Lead> leadsThatNeedsToAssigned)
    {
        Integer index = 0;
        String countryName;
        String regionId;
        String regionName;

        List<updateRoundRobinMembersRegion> updateRoundRobinMembersRegion = new List<Round_Robin_Member_Region__c>();

        for(Lead newLead:leadsThatNeedsToAssigned)
        {
            countryName=newLead.Country; 
        }

        List<CountryRegion__mdt> getRegionNames= [ SELECT Label,
                                                           Region__c,
                                                           Region__r.Label 
                                                    FROM 
                                                           CountryRegion__mdt 
                                                    WHERE  
                                                           Label =:countryName];

        for(CountryRegion__mdt getRegionName:getRegionNames)
        {
            regionName=getRegionName.Region__r.Label;
            System.debug(regionName);
        }
        
        List<Round_Robin_Member_Region__c> getMembers= [ SELECT 
                                                                Round_Robin_Config__c.Region__c, 
                                                                Round_Robin_Member__r.User__c, 
                                                                IsActive__c 
                                                         FROM 
                                                                Round_Robin_Member_Region__c 
                                                         WHERE 
                                                                Round_Robin_Config__r.Region__c =:regionName 
                                                         AND 
                                                             IsActive__c =TRUE ];

        System.debug(getMembers);   
        
        for(Lead assignLeadOwner:leadsThatNeedsToAssigned)
        {
            if(getMembers.size()>0)
            {
                Round_Robin_Member_Region__c assigneeUpdate = getMembers.get(Math.mod(index,getMembers.size()));
                System.debug(assigneeUpdate);
                assignLeadOwner.OwnerId=assigneeUpdate.Round_Robin_Member__r.User__c;
                assigneeUpdate.Last_Assigned_Date_And_Time__c=System.now();
                index++;
                updateRoundRobinMembersRegion.add(assigneeUpdate);
            }
        }                                   
       Update updateRoundRobinMembersRegion;
    }
}