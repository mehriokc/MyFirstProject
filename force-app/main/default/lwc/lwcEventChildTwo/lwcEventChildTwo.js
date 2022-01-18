import { LightningElement } from 'lwc';

export default class LwcEventChildTwo extends LightningElement {
    handleSendChildTwoDataClick(event) {
        let divElement = this.template.querySelector("div[data-id=buttonDiv]");
        divElement.dispatchEvent(new CustomEvent(
            'senddata', {bubbles:true, composed:false}
        ));
    }

    handleSendChildTwoData1(event) {
        console.log('Inside handleSendChildTwoData1');
    }

    handleSendChildTwoData2(event) {
        console.log('Inside handleSendChildTwoData2');
    }

    handleSendChildTwoData3(event) {
        console.log('Inside handleSendChildTwoData3');
    }
}