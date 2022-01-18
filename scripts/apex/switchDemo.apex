integer rank;
string results = '';
rank = 3
//option 1 for 4 to 10 rank
switch on rank{
    when 1{
        results = 'Gold';
    }
    when 2{
        results = 'Silver';
    }
    when 3{
        results = 'Bronze';
    }
    when 4,5,6,7,8,9,10{
        results = 'Top ten';
    }
    when else{
        results = 'Nooo Rank';
    }
}
system.debug('results = ' + results);