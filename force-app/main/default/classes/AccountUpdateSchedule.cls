public with sharing class AccountUpdateSchedule implements Schedulable{
    public void execute(SchedulableContext sc){
        AccountUpdateBatch accBatch = new AccountUpdateBatch();
    // call any thing here 
    system.debug('its midnight ');

    }
}
