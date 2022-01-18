//map2
map<string, string> countryAndCapitalMap = new map<string, string>();
string indiaCapital = 'Delhi';
countryAndCapitalMap.put('USA', 'DC');
countryAndCapitalMap.put('India', 'indiaCapital');
countryAndCapitalMap.put('Turkey', 'Ankara');
countryAndCapitalMap.put('Turkmenistan', 'Ashgabat');
countryAndCapitalMap.put('Thailand', 'Bangkok');

//Country is _____ and its capital is _____


//1. get set of keys using .keySet(
    set<string> countryKeySet = countryAndCapitalMap.keySet();
    for(string eachCountry: countryKeySet){
        //.get each value using. get(key)
        string eachCapital = countryAndCapitalMap.get(eachCountry);
        system.debug('Country is '  + eachCountry + ' and its capital is  ' + eachCapital.toUpperCase() );
    }


//Group 1 list of candidates
list<string> listCandidatesG1 = new list<string>();
listCandidatesG1.add('Babur');
listCandidatesG1.add('Zhannat');
listCandidatesG1.add('DovraN');
//group 2 list of candidates
list<string> listCandidatesG2 = new list<string>();
listCandidatesG2.add('Sadi');
listCandidatesG2.add('Betul');
listCandidatesG2.add('Dovlet');
list<string> listCandidatesG3 = new list<string>{'Emir','Erhan','Ceyhun','Elvira','Nuriya'};
//creating map of string, list<string>
map<string, list<string>> mapGroupsCandidate = new map<string, list<string>>();
mapGroupsCandidate.put('Group1', listCandidatesG1); //right????????
mapGroupsCandidate.put('Group2', listCandidatesG2);
mapGroupsCandidate.put('Group3', listCandidatesG3);
//PRINT this
//______  is in group _______
//example: Babur is in Group1
//use map
for(string eachGroupName: mapGroupsCandidate.keySet()){
    //we have group name -> eachGroupName
    list<string> eachListOfCandidates = mapGroupsCandidate.get(eachGroupName);
    for( string eachFalconName : eachListOfCandidates){
        system.debug(eachFalconName + ' is in ' + eachGroupName);
    }
}