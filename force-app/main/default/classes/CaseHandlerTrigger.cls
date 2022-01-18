public with sharing class CaseHandlerTrigger {
       // 1-> If a High priority case is updated or created, Validate that the description field is not null. If it is null then show the error , (11/13/21)

    public static void HighCaseUpdatedOrCreated(List<case> listCaseNew){
        for(case eachCass : listCaseNew) {
            if(eachCass.priority == 'High' && eachCass.Description== null)
            eachCass.Description.addError('Description should not be empty');
            
        }   
        
    }
    //2-> For a High priority case do not allow the user to change the priority to something else. Error should be shown on the field.
    public static void highPriorityUpdate(list<case> triggerNew, map<id, case> triggerOldMap) {
        for(Case eachCase : triggerNew){
            if(triggerOldMap.get(eachCase.id).Priority == 'High' && eachCase.priority != triggerOldMap.get(eachCase.id).Priority){
                eachCase.priority.addError('You can not change the priority if it is high');
            }
        }
    }
    
    }



                        
