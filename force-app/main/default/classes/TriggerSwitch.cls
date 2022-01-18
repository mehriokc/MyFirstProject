public with sharing class TriggerSwitch {
    //create a static variable which holds customSetting record value
    public static TriggerSwitch__c tsClassGlobal;
//method to get value of custom Setting.
    //this is only point from where we fetch the value.
    //And assign it to global variable
    public static void getTriggerSwith() {
        //method to get Hierarchy default custom setting
        TriggerSwitch__c ts = TriggerSwitch__c.getOrgDefaults();
        tsClassGlobal = ts;
    }
    //method to return boolean value if allTrigger switch is on or off.
    //returns true if not set.
    public static boolean isAllTriggerOn() {
        //a boolean flag
        boolean allTriggerFlag = true;
        //if global variable is null,
        if(tsClassGlobal == null){
            //then call the method (which will set the value of global)
            getTriggerSwith();
        }
        //check if global variable is not null then set value of flag.
        system.debug('tsClassGlobal = ' + tsClassGlobal);
        if(tsClassGlobal != null && tsClassGlobal.Id != null)
            allTriggerFlag = tsClassGlobal.AllTrigger__c;
        return allTriggerFlag;
    }
    //method to return boolean value if AccountTrigger switch is on or off.
    //returns true if not set.
    public static boolean isAccountTriggerOn() {
        //a boolean flag
        boolean TriggerFlag = true;
        //if global variable is null,
        if(tsClassGlobal == null){
            //then call the method (which will set the value of global)
            getTriggerSwith();
        }
        //check if global variable is not null then set value of flag.
        system.debug('tsClassGlobal = ' + tsClassGlobal);
        if(tsClassGlobal != null && tsClassGlobal.Id != null)
            TriggerFlag = tsClassGlobal.AccountTrigger__c;
        return TriggerFlag;
    }
    //create similar methods for AccountTrigger, ContactTrigger.
}
       