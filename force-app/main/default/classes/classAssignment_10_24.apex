// ==========================================
// Question 1 (Topic - Apex Classes)
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
// ==========================================


// ==========================================
// Question 2 (Topic - Apex Classes)
Area myArea = new Area();

myArea.setDim(4, 5);
System.System.debug('The area of the rectangle is ' + myArea.getArea());
// ==========================================


// ==========================================
// Question 3 (Topic - Apex Classes)
Student myStudent = new Student();

myStudent.name = 'John';
myStudent.roll_no = 2;
// ==========================================



// ==========================================
// Question 4 (Topic - Apex Classes)
Student myStudent1 = new Student();

myStudent1.name = 'John';
myStudent1.roll_no = 2;
myStudent1.address = '123 N Main st, Main Town, Best State, 78555';
myStudent1.phoneNumber = '405 123 4567';

Student myStudent2 = new Student();

myStudent2.name = 'Sam';
myStudent2.roll_no = 3;
myStudent2.address = '456 N Wain st, Wain Town, Test State, 78555';
myStudent2.phoneNumber = '504 456 1234';

System.debug(myStudent1.name + '\'s phone is ' + myStudent1.phoneNumber);
System.debug(myStudent1.name + '\'s address is ' + myStudent1.address);

System.debug(myStudent2.name + '\'s phone is ' + myStudent2.phoneNumber);
System.debug(myStudent2.name + '\'s address is ' + myStudent2.address);

// ==========================================



// ==========================================
// Question 5 (Triangle - Apex Classes)
Triangle tri = new Triangle(3,4,5);
// system.debug('area of triangle --> '+areaTriangle);
// ==========================================



// ==========================================
// Question 6 (Rectangle - Apex Classes)
  Rectangle rec1 = new Rectangle(4,5);
  integer areRec1 = rec1.Area();
  System.debug('Area of the first rectangle: ' + areRec1);
  Rectangle rec2 = new Rectangle(5,8);
  integer areRec2 = rec2.Area();
  System.debug(' area of the second rectangle: '+areRec2);

// ==========================================
