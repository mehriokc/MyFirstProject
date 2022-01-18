import { LightningElement, wire } from 'lwc';
import getAccountByKeyword from '@salesforce/apex/AccountController.getAccountByKeyword';

export default class LwcWireParameter extends LightningElement {
    enteredValue = '';
    keywordJS = '';

    //keywordJS = 'washington'
    @wire(getAccountByKeyword, { keyword: '$keywordJS' })
    accounts;

    handleSearchKeyword(event) {
        //enteredValue = 'washington'
        this.enteredValue = event.detail.value;
        console.log('Entered value: ', this.enteredValue);
    }
    handleGetAccountsByKeyword() {
        this.keywordJS = this.enteredValue;
    }
}