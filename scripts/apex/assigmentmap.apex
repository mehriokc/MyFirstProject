// 1

map<integer,string>zipCodeToCityMap = new map<integer,string>();

//2
zipCodeToCityMap.put(08823, 'Franklin Park');
zipCodeToCityMap.put(08876, 'Somerset');
zipCodeToCityMap.put(11210, 'Syracuse');
zipCodeToCityMap.put( 11200, 'NYC');
zipCodeToCityMap.put(08902, 'North Brunswick');
//3
boolean zipCodeContain = zipCodeToCityMap.containsKey(204101);
system.debug('zipCodeContain  ->' + zipCodeContain);
//4
set<integer> zipCode = zipCodeToCityMap.keySet();
system.debug('Zip Codes are '+ zipCode);

//5
list<string> cityName = zipCodeToCityMap.values();
system.debug('Name of the cities ' +CityName);
//6
integer mapSize = zipCodeToCityMap.size();
system.debug('size of the map '+mapSize);

//7
set<integer> uniqueZipCodeSet = new set<integer>();
uniqueZipCodeSet.addAll(zipCode);
system.debug(uniqueZipCodeSet);

//8
list<string> cityNameList = new list<string>();
cityNameList.addAll(cityName);
system.debug(cityNameList);
//9
boolean isEmpty = zipCodeToCityMap.isEmpty();
system.debug('is zipe code empty? ' + isEmpty);
//10
map< string, decimal> currencyExchangerate = new map<string, decimal>();
currencyExchangeRate.put('USD', 1.00);
currencyExchangeRate.put('INR', 25.75);
currencyExchangeRate.put('CAD', 1.24);
currencyExchangeRate.put('LIRA', 9.27);
currencyExchangeRate.put('MANAT', 3.49);

//11

decimal rateOfTheCountry = currencyExchangeRate.get('CAD');
system.debug(rateOfTheCountry);

//12
system.debug('South Africa conversion rate contains ' + currencyExchangeRate.containsKey ('ZAR'));

//13
list<string> EveningActivities = new list<string>{'Dinner', 'Tea Time', 'Walking'};
list<string> MorningActivities = new list<string>{'Workout','Breakfast','Grocery'};
list<string> AfternoonActivities = new list<string>{'Lunch', 'Reading','Rest'};
list<string> NightActivvities = new list<string>{'Movie', 'Coffee', 'Bed Time'};

map<string, list<string>> ActivitiesOfDay = new map<string, list<string>>();

ActivitiesOfDay.put('Night', NightActivvities);
ActivitiesOfDay.put('Afternoon',AfternoonActivities);
ActivitiesOfDay.put('Evening', EveningActivities);
ActivitiesOfDay.put('Morning', MorningActivities);
system.debug('Activities of the day ' + ActivitiesOfDay);

//14
list<string>EveningActivitiesValue = ActivitiesOfDay.get('Evening');
system.debug('Size of the evening activities ' + EveningActivitiesValue.size());

//15
system.debug('if you have plan any activity for morning? '+ MorningActivities.isEmpty());
//16
list<string> MondayActivities = new list<string>{'Study', 'Grocery', 'Sport'};
list<string> TuesdayActivities = new list<string>{'Piknik', 'Cleaning', 'Work'};
list<string> WednesdayActivities = new list<string>{'Piknik', 'Swimming', 'Reading'};
list<string> ThursdayActivities = new list<string>{'Yoga', 'Cleaning', 'Work'};
list<string> FridayActivities = new list<string>{'Piknik', 'Salon', 'Work'};
list<string> SaturdaActivities = new list<string>{'Piknik', 'Cleaning', 'Work'};
list<string> SundayActivities = new list<string>{'Pray', 'Cooking', 'Work'};

map<string, list<string>> DaylyActivities = new map<string, list<string>>();

DaylyActivities.put('Monday', MondayActivities);
DaylyActivities.put('Tuesday', TuesdayActivities);
DaylyActivities.put('Wednesday',WednesdayActivities);
DaylyActivities.put('Thursday', ThursdayActivities);
DaylyActivities.put('Friday', FridayActivities);
DaylyActivities.put('Saturday', SaturdaActivities);
DaylyActivities.put('Sunday', SundayActivities);

system.debug('Day by day activities '+ DaylyActivities);

//17
system.debug('Activities for Tuesday' + DaylyActivities.get('Tuesday'));








