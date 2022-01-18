import { LightningElement } from 'lwc';

export default class LwcIf extends LightningElement {
    showSection = false;

    handleClick() {
        this.showSection = this.showSection ? false : true;
        //this.showSection = !this.showSection;
        //this.showSection = (this.showSection == true) ? false : true;

        //if(this.showSection == true) 
        //if(this.showSection)
    }
}