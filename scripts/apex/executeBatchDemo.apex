AccountUpdateBatch accBatch = new AccountUpdateBatch();
Id accBatchID = Database.executeBatch(accBatch, 20);
system.debug('acc Batch ID = ' + accBatchID);