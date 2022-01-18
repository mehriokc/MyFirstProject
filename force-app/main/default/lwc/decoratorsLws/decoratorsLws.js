import { LightningElement } from 'lwc';

export default class DecoratorsLws extends LightningElement {
    message = 'This is default message';
    contact = {
        "FirstName": "Vova",
        "LastName": "Umka"
    };

    handleClick() {
        this.message = this.message + '1234';
        this.contact.FirstName = this.contact.FirstName + ' Vova';
        this.contact.LastName = this.contact.LastName + ' Umka';
    }
    get FullName() {
        return this.contact.FirstName + this.contact.LastName;
    }
}
