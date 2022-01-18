import { LightningElement } from 'lwc';
import templateOne from './templateOne.html';
import templateTwo from './templateTwo.html';
//import lwcRender from './lwcRender.html';

export default class LwcRender extends LightningElement {
    templateOneHtml = true;

    render() {
        // if (this.templateOneHtml == true) {
        //     return templateOne;
        // } else {
        //     return templateTwo;
        // }
        return this.templateOneHtml ? templateOne : templateTwo;
    }

    handleTemplateChange(event) {
        this.templateOneHtml = !this.templateOneHtml;
    }
}