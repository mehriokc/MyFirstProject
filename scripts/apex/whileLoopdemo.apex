//print 1 to 10
system.debug(1);
system.debug(2);
system.debug(3);
system.debug(4);
system.debug(5);
system.debug(6);
system.debug(7);
system.debug(8);
system.debug(9);
system.debug(10);

// integer i =1;
// while ( i <= 10){
//     integer a = 1;
//     system.debug(i);
//     i++;
//     system.debug('a = ' + a);
//     i++;
// }
// // add even integer in a list
list<integer> evenIntegers = new list<integer>();
// //first 20 even integers

//condition will be size

integer i = 1;
while(evenIntegers.size() < 20){
    //check if i is even
    if ( math.mod(i,2) == 0){
        evenIntegers.add(i);

    }
    i++;
}
system.debug('size of evenInteger ' + evenIntegers.size());
system.debug('evenInteger =  ' + evenIntegers);

//print all the elements of evenInteger list using while loop.
//give me the logic. i will write the syntax

//initiate a integer
integer a = 0;
//if a < size of list
while( a < evenIntegers.size()){
    system.debug('a value is ' + a);
    //printing list element
    //using index of the list -> .get(index) -> .get(a)
    system.debug(evenIntegers.get(a));
    a++;
} 