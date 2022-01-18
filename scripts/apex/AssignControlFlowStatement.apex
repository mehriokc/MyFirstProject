//1

integer l=10;
integer b = 8;

integer asquare=l*l;
integer perimeterSquare=4*l;

if(l==b){
system.debug('The shape is square ');


}
else {system.debug('The perimeter of square ');

}
if(l==b){
    system.debug('asquare then print area' + asquare);


}
else{
    system.debug(perimeterSquare);
}




//2
integer var1 = 15;
integer var2 = 20;

if(var1>var2){
    system.debug(Var1 + ' is greater than ' + var2);
}
else if(var1<var2) {
    system.debug(Var2 + ' is greater than ' + var1);
}
else {
    system.debug(Var2 + ' is equal to ' + var1);
    }

//3
integer Quantity = 12;
integer unitPrice = 100;
decimal discount= (Quantity*unitPrice)*0.1;
if (Quantity*unitPrice > 1000){
    system.debug('You got %10 discount. Discounted price is ' + ((Quantity*unitPrice) -discount) );
}
else{
    system.debug('You got no discount. Total price is ' + Quantity*unitPrice );
}

//4
integer yearService= 6;
integer Salary = 100000;
if ( yearService>5) {
    system.debug('You got 5% bonus ' + Salary*1.05);}
    else{
        system.debug('You got no bonus. Your Salary '+ Salary);

    }
    //5
 integer grade;
 string result='';
 grade= 85;
 if(0 < grade && grade <= 25){
     result ='F';
 }
 else if (25 < grade && grade <= 45){
     result ='E';
 }
 else if (45 < grade && grade <=50){
     result='D';
 }
else if ( 50< grade && grade <=60 ){
     result ='C';
 }
 else if (60 < grade && grade <=80){
     result='B';
 }
else if (grade >80 && grade <= 100){
    result='A';
}
else {
    result='Not exist';
}
system.debug('The result is: ' +result);

//6
integer age1=25;
integer age2= 40;
integer age3= 18;

integer youngest = age1;
integer oldest = age1;

string youngestName = 'age1';
String oldestName = 'age1';

if (age2 > age1) {
    oldestName  = 'age2';
    if (age2 > age3) {
    oldestName = 'age2';    
    }
    else oldestName = 'age3';
}
else {
    youngestName = 'age2';
    if (age2 < age3) {
    youngestName = 'age2';    
    }
    else youngestName = 'age3';}



system.debug('The youngest age is ' + youngestName);
system.debug('The oldest age is ' + oldestName);

//7
integer intClassHeld = 100;
integer intClassAttended = 60;
integer intAttendance = 100*intClassAttended/intClassHeld;

if (intAttendance < 75){
    system.debug('Your attendance percentage is %' + intAttendance + '. You can not sit in exam.');
}else {
    system.debug('Your attendance percentage is %' + intAttendance + '. You can sit in exam.');
}


//8

integer intClassHeldUPD = 100;
integer intClassAttendedUPD = 60;
boolean blnIsMedicalCause = false;
integer intAttendanceUPD = 100*intClassAttendedUPD/intClassHeldUPD;

if (intAttendance > 75){
    system.debug('Your attendance percentage is %' + intAttendanceUPD + '. You can sit in exam.');    
}else if(blnIsMedicalCause){
    system.debug('Your attendance percentage is %' + intAttendanceUPD + ', but you have a medical cause. So, you can sit in exam.');
}else {
    system.debug('Your attendance percentage is %' + intAttendanceUPD + ' and you do not have a medical cause. You can not sit in exam.');
}

// 9

integer x = 2;
integer y = 5;
integer z = 0;

system.debug('The result of expression x==2 is ' + (x==2));
system.debug('The result of expression x!=5 is ' + (x!=5));
system.debug('The result of expression x!=5 && y>=5 is ' + (x!=5 && y>=5 ));
system.debug('The result of expression z!=0 || x==2 ' + (z!=0 || x==2));
system.debug('The result of expression !(y<10) is ' + (!(y<10)));

//10
integer year = 2009;
if(Math.mod(year,4)==0){
    system.debug('its a leap year ');
}else{
    system.debug('its not a leap year ');
}
//11
integer age = 50;
string gender = 'F';
string MaritalSt = 'Y';
if (gender.equals('M')){
    system.debug('She can work only in urban areas ');
}else{
    system.debug('she cannot work in urban areas ');
}
if (gender.equals('F') && (20<age && age<=40)){
system.debug('He may work anywhere ');
}else{
    system.debug('you cannot work yet');
}
if (gender.equals('F') && (40<age && age<60)){
system.debug('He can work in urban areas only.');
}else{
    system.debug(' ERROR');
}