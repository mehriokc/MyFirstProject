//1st one; Save all the integers from the range of -1000 to 1000 in a list.
list<integer> intList= new list<integer>();
for(integer i=-1000; i<=1000; i++){
    intList.add(i);
    
}
system.debug('whole list : '+intList);

//2nd one;Prepare another list which consist of all the even integers from the list created in question 1.
list<integer> evenList= new list<integer>();
for(integer each:intList){
    if(math.mod(each,2)==0){
     evenList.add(each);
    }
}
system.debug('evenList : '+evenList);

// 3rd one;Prepare another list which consist of all the odd integers from the list created in question 1.
list<integer> oddList= new list<integer>();
for(integer each:intList){
    if(math.mod(each,2)!=0){
     oddList.add(each);
    }
}
system.debug('oddList : '+oddList);
// 4rd one;Find the sum of all the even integers with the help of list created in question 2.
integer sum=0;
  for(integer each:evenList){
     sum= sum+each;
  }
system.debug('sum of even: '+sum);
//5th one; Find the sum of all the odd integers with the help of list created in question 3.
integer sum2=0;
  for(integer each:oddList){
     sum2= sum2+each;
  }
system.debug('sum of odd: '+sum2);
//6th one; Find the difference between the average sum of list created in question 2 and question 3.
integer averageEven=sum/evenList.size();
system.debug('averageEven '+averageEven);
integer arerageOdd=sum2/oddList.size();
system.debug('arerageOdd '+arerageOdd);

// 7th one;Find all the leap years which are going to come in next thousand years and collect them in a list. Please try to solve it with out hard coding the current year in this.
list<integer> leapYearList= new list<integer>();
for(integer i=2021; i<=3021;i++){
    if(Date.isLeapYear(i)){
        leapYearList.add(i);
    }
}
system.debug('leapYearList: '+leapYearList);

//8

    integer a = 10;
    string zero = '0';
    string one = '1';
    string str =' ';

for(integer i = 0; i <= a; i++){ //1, 2, 3
    if (math.mod(i,2) == 0) {    //0/2=0, 
       str += zero;              // str = str + zero = str = zero
    }
    else  {                      //3/2 = 1; remainder 1; str - str + one -> str = one
        str += one;
    }

}

system.debug(' patern '+ str);

//9
integer intNumber = 5;
integer factorial = 1;
if(intNumber<0){
    system.debug(intNumber + ' is a negative number. Factorial can not be calculated.'); 
}else{
    for (integer i=1; i <=intNumber; i++) factorial *= i; // factorial = factorial * i
    system.debug('Factorial of ' + intNumber + ' is ' + factorial); 
}

// 10
List<integer> samplevalues = new List<integer>();
samplevalues.add(55);
samplevalues.add(75);
samplevalues.add(40);
samplevalues.add(100);
integer maxvalue = samplevalues.get(0);
//max value is 55
        For (integer i =0;i<samplevalues.size();i++)
        {
       if( samplevalues.get(i) > maxvalue)
                maxvalue = samplevalues.get(i);            
        }    
system.debug('The max value is '+maxvalue);

// Question 11

String myString = 'I do not like to work with Strings. I know they do have lots of class methods in apex language and it\'s very difficult to memorize each one of them. Although it\'s always preferred by experience developers to refer the apex developer guide to find the relevant methods to build or develop a solution.';

// Question 11.1 - Total number of characters in the string
System.debug('Total number of characters is ' + myString.getChars().size());
System.debug('Total number of characters is ' + myString.getChars());

// Question 11.2 - Total number of words in the string
List<String> lstWords = myString.replaceAll('//.', ' ').split(' ');
System.debug('Total number of words is ' + lstWords.size());
// for (String word:lstWords) System.debug(word);
System.debug(lstWords);

// Question 11.3 - Total number of sentences in the string
System.debug('Total number of sentences is ' + myString.split('\\.').size());
System.debug('Sentences mentioned in the string are ' + myString.split('\\.'));

// Question 11.4 - Total number of vowels in the string
// System.debug('Total number of vowels is ' + myString.split('// [aeiou]?').size());
// System.debug('Total number of vowels is ' + myString.split('// [aeiou]?'));
integer totalVowel=0;
List<String> lstVowels = new List<String>{'a', 'e', 'o', 'i', 'u', 'A', 'E', 'O', 'I', 'U'};
for (string character : myString.split('')){
    if(lstVowels.contains(character)) totalVowel++;
}
System.debug('Total number of vowels is ' + totalVowel);

