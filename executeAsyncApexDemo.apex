//AccountQueueableExample2 acqw = new AccountQueueableExample2();
system.enqueueJob(new AccountQueueableExample2 ());




// actual one

list<account> accList = [ SELECT id, Name from account];
//while creating instance we pass the list of account 
AccountQueueableExample aqe = new AccountQueueableExample(accList);
//enqueue job by passing instance name
ID jobId = system.enqueueJob(aqe);
system.debug('job id ' + jobId);