// basic for loop to print 1 to 10

for(integer i = 1; i<=10; i++){
    //print i;
    system.debug(i);
}
//create a list of first 20 odd integers.
list<integer> oddIntegers = new list<integer>();

//for loop
for(integer i = 1; oddIntegers.size()< 20; i++){
    system.debug('i = ' + i);
    //check if integer is odd
    if(math.mod(i,2) !=0){
        oddIntegers.add(i);
        system.debug('adding odd integer in  the list -> ' +i);
    }
}
system.debug('oddIntegers = ' + oddIntegers);
