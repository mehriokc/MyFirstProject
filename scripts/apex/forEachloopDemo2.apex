//Create new set wl all the fruits in below set
//but first letetr shoild be capitlized.

set<string> setFruits = new set<string>();
setFruits.add('apple');
setFruits.add('grapes');
setFruits.add('apple');
setFruits.add('grapes');
setFruits.add('orange');

set<string> newSetFruits = new set<string>();

for(string eachFruits: setFruits){
   
    string inCaps = eachFruits.capitalize();
    system.debug('fruits in caps  ' + inCaps);
     newSetFruits.add(inCaps);
     system.debug(newSetFruits);
}
system.debug(newSetFruits);// cannot be accessed


//create list of candidates in your group.
//Group 1 list
list<string> listCandidatesG1 = new list<string>();
integer x = 56;
listCandidatesG1.add('Babur');
listCandidatesG1.add('Zhannat');
listCandidatesG1.add('DovraN');
system.debug('group 1 candidates. = ' + listCandidatesG1);
list<string> listCandidatesG2 = new list<string>();
listCandidatesG2.add('Sadi');
listCandidatesG2.add('Betul');
listCandidatesG2.add('Dovlet');
//examples to add multiple elements while creating list
list<string> listCandidatesG3 = new list<string>{'Emir','Erhan','Ceyhun','Elvira','Nuriya'};
    List<integer> listNumber = new list<integer>{2,202,54,98,909};
//Holy List of list
list<list<string>> listOfGroups = new list<list<string>>();
listOfGroups.add(listCandidatesG1);//is this valid?
listOfGroups.add(listCandidatesG2);
listOfGroups.add(listCandidatesG3);
system.debug(listOfGroups);

//print size of each list in listOfGroups

for(list<string> eachList : listOfGroups){
    integer sizeOfEachList = eachList.size();
    system.debug('size of each list is ' + sizeOfEachList);
}


