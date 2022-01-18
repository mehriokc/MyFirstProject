 //map1
map<string, integer> map1 = new map<string, integer>();
map1.put('group 1', 5 );
map1.put('group 2', 6 );
map1.put('group 3', 7 );
map1.put('group 4', 7 );
integer g3 = map1.get('group 3');
system.debug('map1 elements are ' + map1);

//.keySet() returns SET of keys (datatype will be same as key's datatype)
set<string> map1Keys = map1.keySet();
//.values() returns LIST of values (datatype will be same as value's datatype)
list<integer> map1Values = map1.values();

system.debug('map1 keys ' + map1Keys);
system.debug('map1 values list ' + map1Values);

//map2
map<string, string> countryAndCapitalMap = new map<string, string>();
countryAndCapitalMap.put('USA', 'DC');
countryAndCapitalMap.put('India', 'Delhi');
countryAndCapitalMap.put('Turkey', 'Ankara');
countryAndCapitalMap.put('Turkmenistan', 'Ashgabat');
countryAndCapitalMap.put('Thailand', 'Bangkok');
countryAndCapitalMap.put('USA', 'Washington DC');
system.debug('country and its capital are ' + countryAndCapitalMap);

string country = 'Turkey';
string capitalofCountry = countryAndCapitalMap.get(country);
system.debug('capitalofcountry is ' + capitalofCountry);
set<string> setOfCountries = countryAndCapitalMap.keySet();
//.values() returns LIST of values (datatype will be same as value's datatype)
list<string> listOfCapitals = countryAndCapitalMap.values();
system.debug('list of capitals ' + listOfCapitals);
system.debug('set of contries ' + setOfCountries);


//map3
map<integer, string> map3 = new map<integer, string>();
map3.put(10,'ten');
map3.put(9,'nine');
map3.put(7,'seven');

set<integer> map3Keys = map3.keySet();
system.debug('map3 keys ' + map3keys);

//getting value of key 7
string value7 = map3.get(7); //right?
string value15 = map3.get(15);
system.debug('value 15 ' + value15);
system.debug('value 7 ' + value7);

boolean contains15 = map3.containsKey(15);//false
boolean contains9 = map3.containsKey(9);//
system.debug('contains 15 is ' + contains15);
system.debug('contains 9 is ' + contains9);








