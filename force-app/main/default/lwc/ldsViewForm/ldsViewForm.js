import { LightningElement ,api } from 'lwc';

export default class LdsViewForm extends LightningElement {
    @api recordId;
    @api objectApiName;
}