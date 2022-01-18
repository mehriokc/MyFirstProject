import { LightningElement } from 'lwc';
import getAccountByKeyword from '@salesforce/apex/AccountController.getAccountByKeyword';

export default class LwcImperative extends LightningElement {
    accounts;
    error;

    keywordJS = '';

    handleSearchKeyword(event) {
        this.keywordJS = event.detail.value;
        console.log('keyword: ', this.keywordJS);
    }

    handleGetAccountsByKeyword() {
        getAccountByKeyword({ keyword: this.keywordJS })
            .then((result) => {
                this.accounts = result;
                this.error = null;
            })
            .catch((error) => { 
                this.accounts = null;
                this.error = JSON.stringify(error);
            })
    }
}