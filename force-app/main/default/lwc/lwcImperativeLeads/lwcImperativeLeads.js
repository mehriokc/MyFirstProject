import { LightningElement,track } from 'lwc';
import getLeadsImperative from '@salesforce/apex/LeadController.getLeadsImperative';

export default class LwcImperativeLeads extends LightningElement {

@track leadList;
@track showLeads;

keywordJS = '';
onShowClickSalesforce(){
    
    getLeadsImperative(
        {keyword:this.keywordJS}
    )

    .then(result => {
        this.leadList = result;
        this.showLeads = true;
    })
    .catch(error => {
        console.log('Error:- '+error.body.message);
    });
}
onHideClickSalesforce(){
    this.showLeads = false;
}

}
white_check_mark
eyes
raised_hands












