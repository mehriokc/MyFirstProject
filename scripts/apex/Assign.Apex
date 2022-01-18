//1
integer i=0;
integer j=i ++ + ++i;
system.debug(j);

//2
integer a =0;
integer b= ++a + a++;
system.debug(j);

//3
integer x = 100;
integer y = 10;
system.debug(x/y);

//4

Boolean z =false;
Boolean w = true;
if (!z && w)
system.debug('1');
else 
system.debug('2');

//5
boolean b1 = true, b2 =false, b3=true;
system.debug(b1&&b2&&!b3);

//6
integer m=10, n=12, k=1;
k+=m++ - --n;
system.debug(k);

//7
integer c = 10;
c++; c++;++c;
integer e=c++;
system.debug(e);

//8
integer t=19;
integer f = -5;
system.debug(t/f);

//9
integer g= -21;
integer h=4;
system.debug(g/h);

//10
string temp ='Nice';
string temp1=' Work';// there is space before work so system debug will print Nice Work (not NiceWork)
system.debug(temp +  temp1);

//11
//= assigning operators
// ==equal operator
integer p=10;
integer q=9;
system.debug(p==q);
