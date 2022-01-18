trigger CaseTrigger on Case (before insert, after insert, before update, after update) {
   // 1-> If a High priority case is updated or created, Validate that the description field is not null. If it is null then show the error message
        if(trigger.isBefore && (trigger.IsUpdate || trigger.isInsert)){
            CaseHandlerTrigger.HighCaseUpdatedOrCreated(trigger.New);
        }
            //2-> For a High priority case do not allow the user to change the priority to something else. Error should be shown on the field.
            if(trigger.isUpdate){
                CaseHandlerTrigger.highPriorityUpdate(Trigger.new, Trigger.oldMap);
              }
        }
    


       






    /*System.debug('We are in the triggers');
    
    if(trigger.isBefore){
        System.debug('We are in the BEFORE triggers');
        if(trigger.isInsert){
            List<Case> lstCases = trigger.new;
            for(Case css: lstCases){
                if(css.Priority=='High' && css.Description==null)
                    css.Description = 'High priority case needs urgent fix';
            }
            System.debug('We are in the BEFORE INSERT triggers');
        }
        else if(trigger.isUpdate)
            System.debug('We are in the BEFORE UPDATE triggers');
    }

    if(trigger.isAfter){
        System.debug('We are in the AFTER triggers');
        if(trigger.isInsert)
            System.debug('We are in the AFTER INSERT triggers');
        else if(trigger.isUpdate)
            System.debug('We are in the AFTER UPDATE triggers');

            
        for(case eachcase : trigger.new){
            system.debug('Case Id = ' +eachcase.Id + ', last modified date = ' + eachcase.LastModifiedById);
        }
    }*/

    
