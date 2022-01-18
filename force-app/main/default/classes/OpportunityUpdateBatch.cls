public  class OpportunityUpdateBatch implements Database.Batchable<SObject>{

    public  class OpportunityUpdateBatch implements Database.Batchable<SObject> {
        public List<opportunity> start (Database.BatchableContext bc){
            return [select id, name, StageName , Points__c from opportunity where Points__c = Null ];
        }
        public void execute (Database.BatchableContext bc, map<id, opportunity> listMap){
            //trigger.newMap -> map<id, sobject>
            //map of string , sobject - > getall
            map<string, OpportunitySwitch__c > stageMap = OpportunitySwitch__c.getAll();
            //key - NAME (stage name)
            //value - sobject - customSetting record.
            for (opportunity eachOPP : lstOfOpp) {
               string stagename = eachOpp.stagename;
               OpportunitySwitch__c ops = stageMap.get(stagename);
               integer point = ops.Points__c;
               eachOpp.Points__c = point;
            }
            update listMap;
        }
        public void finish(Database.BatchableContext bc){
            System.debug(‘finish method called. Fin.’);
        }
    }