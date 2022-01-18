trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
    // Trigger.New hold new version of Contacts
    if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
        ContactTriggerHandler.createContact(trigger.new);
        ContactTriggerHandler.updateContactLastName(trigger.new, trigger.oldMap);
    }


    
    
    //for(Contact contact: Trigger.new){
    //contact.Description = 'Contact created successfully by using ContactBeforeInsert trigger';
       //     }

   // }
    //if(trigger.isBefore && trigger.isUpdate) {
      //  map<id, contact> oldMap = trigger.oldMap;
       // for(Contact contact: Trigger.new){
          //  if(contact.LastName != oldMap.get(contact.Id).LastName)
           // contact.Description = 'Contact updated successfully by '+ userInfo.getUserName() ;

         //   }
            
    // }

    
    






//trigger ContactTrigger on Contact (before insert, before update) {
  //  if(trigger.isBefore  && trigger.isUpdate){
     //   ContactTriggerHandler.contactUpateValidation1(trigger.new);
  //      ContactTriggerHandler.contactUpateValidation2(TRIGGER.new,trigger.newMap,trigger.oldMap);
   // }


//this should print on insert
// if(trigger.isInsert){
//     system.debug('before insert trigger called');
// }
    


// if(trigger.isUpdate)
//     system.debug('before update trigger called');
}