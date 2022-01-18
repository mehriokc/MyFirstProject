//What would be the output for:
/*Integer x1 = 10;
Integer y1 = -5;
Boolean z1 = x1> x1+y1;
System.debug(Z1); 
//2. negation
boolean notZ1 = !z1;
system.debug(notZ1);

//!true => false
//!false => true
*/
list<string> lst1 = new list<string>();
boolean lst1Check = !lst1.isEmpty(); //lst1.isEmpty() -> true -> !true => false
system.debug('list check is ' + lst1Check);

//4. Addition and subtraction
integer x = 101;
integer y = 7;

integer addXY = x + y;
integer subtractXY = x - y;
//3. multiplication
integer multiplyAddSubstract = addXY * subtractXY;

//9. assignment operators
x += y;
//x = x + y;
y -= x;
//y = y - x;


//6. equal and not-equal
integer i = 8;
integer j = 8;

boolean ijEquals = (i == j);
boolean checkStrEquals = ('Falcons3' == 'falcons3');
boolean checkStrNotEquals = ('Falcons 3 ' != 'falcons3');
system.debug('check str equals is ' + checkStrEquals);
system.debug('check str not equals is ' + checkStrNotEquals);


//7. Logical AND
boolean checkAnd = false && (false && true && true);
boolean checkOR = true || false && true || false;
boolean checkquals = (('Falcons3' == 'falcons3') && ('Falcons 3 ' != 'falcons3'));
system.debug('check quals ' + checkquals);

//5. greater than and less-than
boolean gt1 = (x > y);
boolean lt1 = (x < y); // if x is less than y, then it will be true.
boolean gteq1 = (x >= y);
//true if x is greater than y -> x = 100, y = 99