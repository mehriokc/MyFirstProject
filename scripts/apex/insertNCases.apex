integer numberOfCases = 6;

List<Case> lstCases = new List<Case>();

for(integer i=0; i<numberOfCases; i++){
    Case myCase = new Case();
    myCase.Origin = 'Web';
    myCase.Reason = 'Performance';
    myCase.Status = 'New';
    myCase.Description = 'My case' + i;

    lstCases.add(myCase);
}

insert lstCases;