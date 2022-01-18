// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

// string tempvar = 'Falcon 3';
// System.debug('Hello WEorld!');
// System.debug('My batch name is ' +tempvar);
// System.debug('LATEST UPDATES');
date  todayDay = date.today();
system.debug('Todays day is: ' + todayDay);
date year2789 = date.newInstance(2789, 11, 5);
system.debug('5th November 2789-> ' + year2789);