public with sharing class ProcessIntegerationData implements Queueable, Database.AllowsCallouts
{
    Id logId ;
    public ProcessIntegerationData (Id logId)
    {
        this.logId = logId;
    }

    public void execute(QueueableContext context){
        System.debug(logId);
        Integration_Log__c logRecord = [SELECT Id ,Request_Body__c,Response_Body__c, Is_Sucessful__c FROM Integration_Log__c Where Id =: logId];
        Http httpConnection = new Http();
        HttpRequest request = new HttpRequest();
        HttpResponse response = new HttpResponse();
        request.setEndpoint('https://www.toptal.com/developers/postbin/1691563854361-4803441718686');
        request.setMethod('POST');
        request.setBody(logRecord.Request_Body__c);
        response = httpConnection.send(request);
        System.debug(response.getBody());
        System.debug(response.getStatusCode());
        logRecord.Response_Body__c = response.getBody();
        if(response.getStatusCode() == 200 )
        {
            logRecord.Is_Sucessful__c = true;
        }
        update logRecord;
        
    } 
}