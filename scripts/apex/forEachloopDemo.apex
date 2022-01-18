list<integer> iList = new list<integer>{1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9};

for(integer eachElement : iList ) {
    system.debug(eachElement);
}

list<string> sList = new list<string>{'a', 'b', 'c', 'x', 'y'};

for(string eachString : sList){
    system.debug(eachString);
    system.debug(eachString.toUpperCase());
}