public class ErrorLogHelperInvocable {

    // This method is used to create a ErrorLog record
    // It accepts three parameters: processName (the process where the exception/error happened)
    // errorDetails (error message that is provided by the system when error occurs)
    // currentDateTime (a DateTime variable that records the time when error occured)
    // This is a static method and can be called from a Catch section of a Try/Catch block where an error has high chance to occur
    // Ex:  ErrorLogHelperInvocable.createErrorLog('Create an Account trigger', ErrorDetails, '12/12/21')
    public static void createErrorLog(String processName, String errorDetails, Datetime currentDateTime){
        Error_Log__c errorLog = new Error_Log__c();
        errorLog.Process_Name__c = processName;
        errorLog.Log_Details__c = errorDetails;
        errorLog.Log_Date_Time__c = currentDateTime;

        insert errorLog;
    }



    // This section is required for the createErrorLog method to be an invocable method and be used in a flow
    @InvocableMethod
    public static void createErrorLogFromFlow(List<FlowInputs> flowInputs){
        createErrorLog(flowInputs[0].processName, flowInputs[0].errorDetails, flowInputs[0].currentDateTime);
    }

    public class FlowInputs{
    @InvocableVariable public String processName;
    @InvocableVariable public String errorDetails;
    @InvocableVariable public Datetime currentDateTime;    
    }

}
