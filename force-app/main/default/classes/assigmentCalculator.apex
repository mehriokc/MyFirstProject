Assignmentcalculator s = new Assignmentcalculator();
decimal addNumber = s.addition(0.5,0.1);
system.debug('addition method -> ' + addNumber);

decimal subtNumber =s.subtraction(0.5,0.1);
system.debug('subtraction method --> '+subtNumber);

decimal multNumber =s.multiplication(0.5,0.1);
system.debug('multiplication method -->'  +multNumber);

decimal divNumber =s.division(0.5,0.1);
system.debug('division method -->  ' +divNumber);


decimal listNumber = s.addition(new list<decimal>{2.0, 3.0,5.0,4.1 });
system.debug('list method -->'  +listNumber);