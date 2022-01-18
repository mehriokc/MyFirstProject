//store rank from 1 to 100
integer rank;
string results = '';

//write a program to print results as
//rank is 1 then Gold, 2 then silver, 3 then Bronze.
//rank 4 to 10 then 'Top Ten', rank more than 10 then NOTHING.

rank = 2;
// == -> equality operator.
if(rank == 1){
    results = 'Gold';
}
//for multiple if conditions we use 'else if(boolean_condition)' 
else if(rank == 2){
    results = 'Silver';
} else if(rank == 3){
    results = 'Bronze';
} else {

    if(rank <= 10){
        results = 'Top Ten';
    }
    else{
        results = 'No rank';
    }

}
system.debug('result is ' + results);
