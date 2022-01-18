map<string, Email_Domain__mdt> mapED = Email_domain__mdt.getAll();
system.debug('mdt = ' + mapEd);
for(Email_Domain__mdt eachEdm: mapED.values()){
    system.debug('domain is  =' +eachEdm.Domain__c);
}