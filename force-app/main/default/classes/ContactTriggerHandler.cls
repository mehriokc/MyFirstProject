public with sharing class ContactTriggerHandler{
    // 1. Do not allow user to update contact if leadsource is Partner Refferal
    public static void contactUpateValidation1(List<Contact> cntTriggerNew){
        for(Contact eachContact : cntTriggerNew){
            if(eachContact.LeadSource == system.label.LeadSourceValidation){
                eachContact.addError('Cannot update \'Partner Referral\' ');
            }
        }
    }

    // 2. Do not allow to update lead source if lead for any contact
    public static void contactUpateValidation2(List<Contact> cntTriggerNew,
    map<id, contact> cntTriggerNewMap,
    map<id, contact> cntTriggerOldmap){

        map<id, contact> oldMap = cntTriggerOldmap;
        for(contact eachContact : cntTriggerNew){
            contact oldContactValue = oldMap.get(eachContact.id);
            if(oldContactValue.LeadSource != null
                && eachContact.LeadSource != oldContactValue.LeadSource)
                    eachContact.LeadSource.addError('Cannot UPDATE LEAD SOURCE!PLEASE USER.');
        }
    }

    public static void createContact(List<contact> cntTrigNew) {
        for(Contact contact: cntTrigNew){
            contact.Description = 'Contact created successfully by using ContactBeforeInsert trigger';
            }
    }

    public static void updateContactLastName(list<Contact> cntTrigNew, map<id, contact> triggerOldMap ) {
       
            for(Contact contact: cntTrigNew){
                if (contact.LastName != triggerOldMap.get(contact.Id).LastName) 
                contact.Description = 'Contact updated successfully by '+ userInfo.getUserName() ;
            }
    }

