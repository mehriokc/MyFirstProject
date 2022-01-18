System.debug('>>> Question 1: ');
assignmentDml.newAccountRec('New Jersey');

System.debug('>>> Question 2: ');
account acc = [ SELECT id, Name FROM Account limit 1];
System.debug('Fetched account ' + acc);
assignmentDml.accountToOpp(acc);