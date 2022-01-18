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

//print 0 to 100
//traditional for loop
string iStr = '';
list<integer> iList = new list<integer>();
for(integer i = 0; i <=1500; i++){
    //system.debug('i = ' + i);
    iList.add(i);
    iStr = iStr + string.valueOf(i) +  ', ' ;
}
system.debug(iStr);
system.debug(iList);
system.debug('size of iList = ' + iList.size());

//we have a list 'iList'
//print each element in debug using traditional for LOOP
system.debug('Print every element in the list using for loop');
for(integer j=0; j < iList.size() ; j++ ){
    system.debug(iList.get(j));
}