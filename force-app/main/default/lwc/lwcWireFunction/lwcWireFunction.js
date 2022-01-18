import { LightningElement , wire } from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccounts';

export default class LwcWireFunction extends LightningElement {
    accounts;
    error;
    @wire(getAccounts)
    accountFetch({ data, error }) {
        if (data) {
            this.accounts = data;
            this.error = null;
        } else if (error) {
            this.accounts = null;
            this.error = JSON.stringify(error);
        }
    }
}