public with sharing class ShedularForBatchToUpdate implements Schedulable{
    public ShedularForBatchToUpdate() {

    }
    public void execute(SchedulableContext context)
    {
        Database.executeBatch(new RandomUpdateAccCon(),2);
    }
}